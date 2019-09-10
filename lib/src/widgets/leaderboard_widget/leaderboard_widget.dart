import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderboardWidget extends StatelessWidget {
  final ColorModel colorModel;

  const LeaderboardWidget({Key key, @required this.colorModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(5),
        bottom: ScreenUtil().setHeight(16),
      ),
      width: ScreenUtil().setWidth(335),
      constraints: BoxConstraints(minHeight: ScreenUtil().setHeight(190)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 3),
            spreadRadius: 1,
            color: Color(AppColors.shadowColor),
          ),
        ],
        color: Colors.white,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(335),
              height: ScreenUtil().setHeight(190),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorModel.dark,
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
