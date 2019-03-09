import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceCard extends StatelessWidget {
  final Student student;
  final bool attendance;

  AttendanceCard({
    @required this.student,
    this.attendance = true,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
    )..init(context);

    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setHeight(8)),
      child: Container(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(6),
          bottom: ScreenUtil().setHeight(6),
          right: ScreenUtil().setWidth(6),
          left: ScreenUtil().setWidth(12),
        ),
        width: ScreenUtil().setWidth(331),
        height: ScreenUtil().setHeight(55),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 1,
              color: Color(AppColors.shadowColor),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                AppPhotos.staticAvatar,
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(12),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${student.fname + ' ' + student.lname}",
                    style: AppFontStyles(context).textStyle15GreyMedium,
                  ),
                  Text(
                    "Gender",
                    style: AppFontStyles(context).textStyle12Grey,
                  )
                ],
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(43),
              height: ScreenUtil().setHeight(43),
              decoration: BoxDecoration(
                color: (attendance)
                    ? Color(AppColors.studentPresent)
                    : Color(AppColors.studentAbsent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  (attendance) ? "P" : "A",
                  style: AppFontStyles(context).textStyle15WhiteMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
