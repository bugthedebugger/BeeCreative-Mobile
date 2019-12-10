import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/notification_bloc/notification_bloc_export.dart';
import 'package:BeeCreative/src/data/models/notification_settings/notification_settings.dart';
import 'package:BeeCreative/src/widgets/custom_notification_time_selector/custom_notification_time_selector.dart';
import 'package:BeeCreative/src/widgets/enable_notification_widget/enable_notification_widge.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:BeeCreative/src/widgets/notification_settings_icon_widget/notification_settings_icon_widget.dart';
import 'package:BeeCreative/src/widgets/notification_time_selector/notification_time_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationEnabled = false;
  bool customNotificationEnabled = false;
  String selectedTime;
  final NotificationBloc _bloc = kiwi.Container().resolve<NotificationBloc>();
  StreamSubscription _sub;
  bool loading = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _bloc.init();
    _sub = _bloc.eventStream.listen((onData) {
      // print(onData);
      if (onData is NotificationDisabled) {
        // print('Disabled Notification');
        notificationEnabled = false;
        customNotificationEnabled = false;
        selectedTime = '00:05:00';
        if (loading) {
          Navigator.of(context).pop();
        }
        setState(() {});
        loading = false;
      } else if (onData is NotificationEnabled) {
        // print('Enabled Notification');
        notificationEnabled = onData.settings.enabled;
        customNotificationEnabled = onData.settings.custom;
        selectedTime = onData.settings.time;
        if (loading) {
          Navigator.of(context).pop();
        }
        loading = false;
        setState(() {});
      } else if (onData is EnableNotification) {
        loading = true;
        // print('Enable event');
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
      } else if (onData is DisableNotification) {
        loading = true;
        // print('Disable event');
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
      } else if (onData is NotificationError) {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text('${onData.message}'),
            action: SnackBarAction(
              label: 'Ok',
              onPressed: () {},
            ),
          ),
        );
      }
    });
    _bloc.checkNotificationStatus();
  }

  @override
  void dispose() {
    _sub?.cancel();
    _bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      key: _scaffoldKey,
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
                custom: customNotificationEnabled,
                selectedTime: selectedTime,
              ),
              SizedBox(height: ScreenUtil().setHeight(15)),
              CustomNotificationTimeSelector(
                enabled: customNotificationEnabled,
                onChanged: _setCustomDate,
                customTime: selectedTime,
              ),
              SizedBox(height: ScreenUtil().setHeight(15)),
              RaisedButton(
                onPressed: () {
                  final NotificationSettings settings = NotificationSettings(
                    (b) => b
                      ..enabled = notificationEnabled
                      ..custom = customNotificationEnabled
                      ..time = selectedTime,
                  );
                  if (notificationEnabled)
                    _bloc.enableNotification(settings);
                  else
                    _bloc.disableNotification();
                },
                color: Color(AppColors.loginGrass),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(42),
                    vertical: ScreenUtil().setHeight(11),
                  ),
                  child: Text(
                    'Save Settings',
                    style: AppFontStyles(context).getTextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      weight: 'medium',
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(15)),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'GO BACK',
                  style: AppFontStyles(context).getTextStyle(
                    color: Color(AppColors.meltingCardColor),
                    fontSize: 15,
                    weight: 'medium',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _setCustomDate() async {
    // print('Invoked!');
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child,
        );
      },
    );
    selectedTime =
        '${time.hour < 10 ? 0 : ""}${time.hour}:${time.minute < 10 ? 0 : ""}${time.minute}:00';
    // print(selectedTime);
    setState(() {});
  }

  void _toggleNotification(bool toggle) {
    if (toggle == false) {
      customNotificationEnabled = false;
      selectedTime = '00:05:00';
    }
    setState(() {
      notificationEnabled = toggle;
    });
  }

  void _notificationTimeHandler(String data) {
    if (data == 'custom')
      setState(() {
        customNotificationEnabled = true;
      });
    else {
      setState(() {
        customNotificationEnabled = false;
      });
      selectedTime = data;
    }
    // print('Changed: $data');
  }
}
