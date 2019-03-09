import 'package:BeeCreative/src/bloc/attendance_bloc/attendance_bloc_export.dart';
import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/attendance_card/attendance_card.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'dart:async';

class StudentAttendancePage extends StatefulWidget {
  final ScheduleResponseData scheduleResponseData;
  final Schedule schedule;

  StudentAttendancePage({
    @required this.scheduleResponseData,
    @required this.schedule,
  });

  StudentAttendancePageState createState() => StudentAttendancePageState();
}

class StudentAttendancePageState extends State<StudentAttendancePage> {
  final AttendanceBloc attendanceBloc =
      kiwi.Container().resolve<AttendanceBloc>();
  StreamSubscription _stream;

  @override
  void initState() {
    super.initState();
    _stream = attendanceBloc.attendanceEventStream.listen((event) {
      print(event);
      if (event is SubmittingAttendance) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return Dialog(
              child: Container(
                color: Colors.white,
                height: 80,
                child: Row(
                  children: <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(width: 5),
                    Text("Please wait ..."),
                  ],
                ),
              ),
            );
          },
        );
      } else if (event is Success) {
        Navigator.of(context).pop();
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Attendance submitted successfully!"),
            action: SnackBarAction(
              label: 'ok',
              onPressed: () {},
            ),
          ),
        );
      }
    });
    attendanceBloc.prepareAttendance(
      widget.scheduleResponseData.students,
      widget.schedule,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _stream.cancel();
    attendanceBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: attendanceBloc.attendanceStream,
      builder: (context, AsyncSnapshot<Attendance> snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: snapshot.data.attendanceRecord.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        attendanceBloc.updateAttendance(
                          snapshot.data.attendanceRecord
                              .elementAt(index)
                              .student,
                          widget.schedule,
                          !snapshot.data.attendanceRecord
                              .elementAt(index)
                              .attendance,
                        );
                      },
                      child: AttendanceCard(
                        student: snapshot.data.attendanceRecord
                            .elementAt(index)
                            .student,
                        attendance: snapshot.data.attendanceRecord
                            .elementAt(index)
                            .attendance,
                      ),
                    );
                  },
                ),
              ),
              FloatingActionButton(
                child: Text("Save"),
                onPressed: () {
                  attendanceBloc.submitAttendance();
                },
              ),
            ],
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
