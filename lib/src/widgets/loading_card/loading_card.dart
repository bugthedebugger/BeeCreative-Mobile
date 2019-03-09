import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return Container(
      width: ScreenUtil().setWidth(288),
      height: ScreenUtil().setHeight(145),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              AppPhotos.willi,
              width: ScreenUtil().setWidth(76),
              height: ScreenUtil().setHeight(67),
            ),
            Text(
              "Please Wait ...",
              style: AppFontStyles(context).textStyle15GreyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
