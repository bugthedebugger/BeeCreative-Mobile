import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassDetailsNotificationCard extends StatelessWidget {
  const ClassDetailsNotificationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(
          bottom: ScreenUtil().setHeight(8),
          left: ScreenUtil().setWidth(8),
          right: ScreenUtil().setWidth(8),
          top: ScreenUtil().setHeight(18),
        ),
        width: ScreenUtil().setWidth(329),
        height: ScreenUtil().setHeight(103),
        decoration: BoxDecoration(
          color: Color(AppColors.meltingCardColor),
          borderRadius: BorderRadius.circular(15),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
              size: ScreenUtil().setHeight(66),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Is the class going well?",
                        style: AppFontStyles().textStyle15White,
                      ),
                      Text(
                        "Don't forget to take pictures!",
                        style: AppFontStyles().textStyle15White,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
