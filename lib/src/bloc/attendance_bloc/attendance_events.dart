library attendance_events;

import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:built_value/built_value.dart';
part 'attendance_events.g.dart';

abstract class AttendanceEvent {}

abstract class SubmitAttendance extends AttendanceEvent
    implements Built<SubmitAttendance, SubmitAttendanceBuilder> {
  Attendance get attendance;

  SubmitAttendance._();

  factory SubmitAttendance([updates(SubmitAttendanceBuilder b)]) =
      _$SubmitAttendance;
}

abstract class UpdateAttendance extends AttendanceEvent
    implements Built<UpdateAttendance, UpdateAttendanceBuilder> {
  Attendance get attendance;

  UpdateAttendance._();

  factory UpdateAttendance([updates(UpdateAttendanceBuilder b)]) =
      _$UpdateAttendance;
}

abstract class PrepareAttendance extends AttendanceEvent
    implements Built<PrepareAttendance, PrepareAttendanceBuilder> {
  Attendance get attendance;

  PrepareAttendance._();

  factory PrepareAttendance([updates(PrepareAttendanceBuilder b)]) =
      _$PrepareAttendance;
}

abstract class Success extends AttendanceEvent
    implements Built<Success, SuccessBuilder> {
  // fields go here

  Success._();

  factory Success([updates(SuccessBuilder b)]) = _$Success;
}

abstract class Error extends AttendanceEvent
    implements Built<Error, ErrorBuilder> {
  String get message;

  Error._();

  factory Error([updates(ErrorBuilder b)]) = _$Error;
}

abstract class SubmittingAttendance extends AttendanceEvent
    implements Built<SubmittingAttendance, SubmittingAttendanceBuilder> {
  SubmittingAttendance._();

  factory SubmittingAttendance([updates(SubmittingAttendanceBuilder b)]) =
      _$SubmittingAttendance;
}
