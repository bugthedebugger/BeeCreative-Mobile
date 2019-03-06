import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/attendance_card/attendance_card.dart';
import 'package:flutter/material.dart';

class StudentAttendancePage extends StatefulWidget {
  final ScheduleResponseData scheduleResponseData;
  final Schedule schedule;
  StudentAttendancePage({
    Key key,
    @required this.scheduleResponseData,
    @required this.schedule,
  }) : super(key: key);

  StudentAttendancePageState createState() => StudentAttendancePageState();
}

class StudentAttendancePageState extends State<StudentAttendancePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.scheduleResponseData.students.length,
      itemBuilder: (context, index) {
        return AttendanceCard(
          student: widget.scheduleResponseData.students[index],
        );
      },
    );
  }
}
