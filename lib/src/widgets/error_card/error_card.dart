import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorCard extends StatelessWidget {
  final String message;

  const ErrorCard({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return Container(
      width: ScreenUtil().setWidth(288),
      padding: EdgeInsets.all(
        ScreenUtil().setWidth(10),
      ),
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
              message,
              style: AppFontStyles(context).textStyle15GreyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
