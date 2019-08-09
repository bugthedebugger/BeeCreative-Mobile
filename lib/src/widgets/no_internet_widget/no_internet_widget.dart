import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternetWidget extends StatelessWidget {
  final String message;
  final Function onPressed;

  const NoInternetWidget({Key key, @required this.message, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            AppPhotos.noInternet,
            width: ScreenUtil().setWidth(154),
            height: ScreenUtil().setHeight(134),
          ),
          SizedBox(height: ScreenUtil().setHeight(20)),
          Text(
            message,
            style: AppFontStyles(context).textStyle15BlackMedium,
          ),
          SizedBox(height: ScreenUtil().setHeight(20)),
          RaisedButton(
            onPressed: onPressed,
            color: Color(AppColors.meltingCardColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(50),
                vertical: ScreenUtil().setHeight(8),
              ),
              child: Text(
                "Retry",
                style: AppFontStyles(context).textStyle15WhiteMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
