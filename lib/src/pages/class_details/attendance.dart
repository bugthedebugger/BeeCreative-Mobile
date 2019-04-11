import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/attendance_bloc/attendance_bloc_export.dart';
import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/attendance_card/attendance_card.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

class StudentAttendancePageState extends State<StudentAttendancePage>
    with AutomaticKeepAliveClientMixin {
  final AttendanceBloc attendanceBloc =
      kiwi.Container().resolve<AttendanceBloc>();
  StreamSubscription _stream;

  @override
  void initState() {
    super.initState();
    _stream = attendanceBloc.attendanceEventStream.listen(
      (event) {
        if (event is SubmittingAttendance) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return Dialog(
                child: LoadingCard(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
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
      },
    );
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
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return StreamBuilder(
      stream: attendanceBloc.attendanceStream,
      builder: (context, AsyncSnapshot<Attendance> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: snapshot.data.attendanceRecord.length + 1,
            itemBuilder: (context, index) {
              if (snapshot.data.attendanceRecord.length == index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(114),
                    vertical: ScreenUtil().setHeight(5),
                  ),
                  child: RaisedButton(
                    onPressed: () {
                      attendanceBloc.submitAttendance();
                    },
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(36),
                      vertical: ScreenUtil().setHeight(5),
                    ),
                    color: Color(AppColors.studentPresent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.save,
                          size: ScreenUtil().setHeight(13),
                          color: Colors.white,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(8)),
                        Text(
                          "Save",
                          style: AppFontStyles(context).textStyle15White,
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return GestureDetector(
                  onTap: () {
                    attendanceBloc.updateAttendance(
                      snapshot.data.attendanceRecord.elementAt(index).student,
                      widget.schedule,
                      !snapshot.data.attendanceRecord
                          .elementAt(index)
                          .attendance,
                    );
                  },
                  child: AttendanceCard(
                    student:
                        snapshot.data.attendanceRecord.elementAt(index).student,
                    attendance: snapshot.data.attendanceRecord
                        .elementAt(index)
                        .attendance,
                  ),
                );
              }
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
