import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/widgets/custom_notification_time_selector/custom_notification_time_selector.dart';
import 'package:BeeCreative/src/widgets/enable_notification_widget/enable_notification_widge.dart';
import 'package:BeeCreative/src/widgets/notification_settings_icon_widget/notification_settings_icon_widget.dart';
import 'package:BeeCreative/src/widgets/notification_time_selector/notification_time_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationEnabled = false;
  bool customNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Color(AppColors.meltingCardColor),
            fontSize: ScreenUtil().setSp(18),
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(12)),
          child: Column(
            children: <Widget>[
              NotificationSettingsIconWidget(enabled: notificationEnabled),
              SizedBox(height: ScreenUtil().setHeight(32)),
              EnableNotifictionWidget(
                enabled: notificationEnabled,
                onChanged: _toggleNotification,
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              NotificationTimeSelector(
                enabled: notificationEnabled,
                onChanged: _notificationTimeHandler,
              ),
              SizedBox(height: ScreenUtil().setHeight(15)),
              CustomNotificationTimeSelector(
                enabled: customNotificationEnabled,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleNotification(bool toggle) {
    setState(() {
      notificationEnabled = toggle;
    });
  }

  void _notificationTimeHandler(String data) {
    if (data == 'custom')
      setState(() {
        customNotificationEnabled = true;
      });
    else
      setState(() {
        customNotificationEnabled = false;
      });
    print('Changed: $data');
  }
}
