import 'package:BeeCreative/src/bloc/attendance_bloc/attendance_events.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'dart:async';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/models/student/student.dart';
import 'package:BeeCreative/src/data/repository/attendance_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AttendanceBloc extends Bloc {
  final AttendanceRepository _repository;
  final SharedPreferences _preferences;
  Attendance _attendance;
  String _token;

  AttendanceBloc(this._repository, this._preferences) {
    _attendanceEventStreamController.stream.listen(_mapEventsToState);
    this._token = this._preferences.getString('token');
  }

  void _mapEventsToState(AttendanceEvent event) async {
    if (event is PrepareAttendance) {
      addData(event.attendance);
    } else if (event is UpdateAttendance) {
      addData(event.attendance);
    } else if (event is SubmitAttendance) {
      _mapSubmitAttendanceEvent(event);
    }
  }

  void submitAttendance() {
    dispatch(SubmitAttendance((b) => b..attendance.replace(_attendance)));
  }

  void _mapSubmitAttendanceEvent(SubmitAttendance event) async {
    try {
      dispatch(SubmittingAttendance());
      final response = await this._repository.submitAttendance(
            attendance: event.attendance,
            token: _token,
          );
      if (response.code == 200)
        dispatch(Success());
      else
        dispatch(Error((b) => b..message = 'Unauthenticated'));
    } on NoConnection catch (error) {
      attendanceError(error.message);
    } on AttendanceSubmissionException catch (error) {
      attendanceError(error.message);
    } catch (error) {
      attendanceError(error.toString());
    }
  }

  void attendanceError(String message) {
    dispatch(Error((b) => b..message = message));
  }

  StreamController<AttendanceEvent> _attendanceEventStreamController =
      StreamController<AttendanceEvent>.broadcast();
  Stream<AttendanceEvent> get attendanceEventStream =>
      _attendanceEventStreamController.stream;
  Sink<AttendanceEvent> get _attendanceEventSink =>
      _attendanceEventStreamController.sink;

  StreamController<Attendance> _attendanceStreamController =
      StreamController<Attendance>.broadcast();
  Stream<Attendance> get attendanceStream => _attendanceStreamController.stream;
  Sink<Attendance> get _attendanceSink => _attendanceStreamController.sink;

  void prepareAttendance(BuiltList<Student> students, Schedule schedule) {
    List<AttendanceRecord> attendanceRecord = [];
    students.forEach(
      (student) {
        attendanceRecord.add(
          _mapDataTottendanceRecord(student, schedule, true),
        );
      },
    );
    Attendance attendance = Attendance(
      (b) => b..attendanceRecord.replace(attendanceRecord),
    );
    _attendance = attendance;
    dispatch(PrepareAttendance((b) => b..attendance.replace(attendance)));
  }

  void updateAttendance(Student student, Schedule schedule, bool attendance) {
    AttendanceRecord oldRecord =
        _mapDataTottendanceRecord(student, schedule, !attendance);
    AttendanceRecord newRecord =
        _mapDataTottendanceRecord(student, schedule, attendance);

    int index = _attendance.attendanceRecord.indexOf(oldRecord);
    List<AttendanceRecord> temp = _attendance.attendanceRecord.toList();
    temp.removeAt(index);
    temp.insert(index, newRecord);

    _attendance = Attendance((b) => b..attendanceRecord.replace(temp));

    dispatch(
      UpdateAttendance(
        (b) => b..attendance.replace(_attendance),
      ),
    );
  }

  AttendanceRecord _mapDataTottendanceRecord(
      Student student, Schedule schedule, bool attendance) {
    return AttendanceRecord(
      (b) => b
        ..attendance = attendance
        ..student.replace(student)
        ..schedule.replace(schedule),
    );
  }

  void addData(Attendance attendance) {
    _attendanceSink.add(attendance);
  }

  void dispatch(AttendanceEvent event) {
    _attendanceEventSink.add(event);
  }

  @override
  void dispose() {
    _attendanceEventStreamController.close();
    _attendanceStreamController.close();
  }
}
