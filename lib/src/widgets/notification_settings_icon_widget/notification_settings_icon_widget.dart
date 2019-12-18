import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationSettingsIconWidget extends StatelessWidget {
  final bool enabled;

  const NotificationSettingsIconWidget({
    Key key,
    this.enabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOutCubic,
      width: ScreenUtil().setWidth(336),
      height: ScreenUtil().setHeight(146),
      decoration: BoxDecoration(
        color: Color(
          enabled ? AppColors.notificationGreen : AppColors.notificationRed,
        ),
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(14),
        vertical: ScreenUtil().setHeight(20),
      ),
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(25),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            right: ScreenUtil().setWidth(0),
            bottom: ScreenUtil().setHeight(0),
            child: Image.asset(
              AppPhotos.settingsNotification,
              width: ScreenUtil().setWidth(104.46),
              height: ScreenUtil().setHeight(162.83),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(15),
            left: ScreenUtil().setWidth(0),
            child: Text(
              'NOTIFICATION SETTINGS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: ScreenUtil().setSp(12),
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(44),
            left: ScreenUtil().setWidth(0),
            child: Container(
              height: ScreenUtil().setHeight(55),
              width: ScreenUtil().setWidth(187),
              child: Text(
                'Allows you to manage your notifications coming from the app.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
