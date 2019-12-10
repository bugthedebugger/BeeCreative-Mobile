import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/notification_bloc/notification_bloc_export.dart';
import 'package:BeeCreative/src/data/models/notification_settings/notification_settings.dart';
import 'package:BeeCreative/src/data/models/shared_preferences/user_shared_preferences.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:BeeCreative/src/widgets/melting_card/melting_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class NotificationWelcome extends StatefulWidget {
  _NotificationWelcomeState createState() => _NotificationWelcomeState();
}

class _NotificationWelcomeState extends State<NotificationWelcome> {
  int _notificationGroupValue = 0;
  String userName = 'User Name';
  String avatar;
  NotificationBloc _bloc = kiwi.Container().resolve<NotificationBloc>();
  StreamSubscription _sub;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _notificationFormHandler(val) {
    setState(() {
      _notificationGroupValue = val;
    });
  }

  _read() async {
    final _userPreferences = UserSharedPreferences();
    await _userPreferences.initPreferences();
    userName = _userPreferences.userName;
    avatar = _userPreferences.avatar;
    setState(() {});
  }

  @override
  void initState() {
    _read();
    _bloc.init();
    _bloc.eventStream.listen((onData) {
      if (onData is NotificationEnabled) {
        Navigator.of(context).pop();
        Navigator.pushReplacementNamed(
          context,
          Routes.WELCOME_BACK,
        );
      } else if (onData is EnableNotification) {
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
        Navigator.of(context).pop();
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
    super.initState();
  }

  @override
  void dispose() {
    _sub?.cancel();
    _bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _notificationFormKey = GlobalKey<FormState>();

    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: <Widget>[
            MeltingCard(
              color: Color(AppColors.meltingCardColor),
              height: 350,
              child: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(150)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                      transitionOnUserGestures: true,
                      tag: 'avatar',
                      child: AvatarCircle(AppPhotos.staticAvatar, avatar),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(5)),
                    Text(
                      "$userName",
                      style: AppFontStyles(context).textStyle20White,
                    ),
                  ],
                )),
              ),
            ),
            Form(
                key: _notificationFormKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "What time would you like to be notified about your classes?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: ScreenUtil().setHeight(5)),
                      Row(
                        children: <Widget>[
                          Radio(
                            groupValue: _notificationGroupValue,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            activeColor: Color(AppColors.meltingCardColor),
                            onChanged: _notificationFormHandler,
                          ),
                          Text(
                            "an hour earlier",
                            style: TextStyle(
                                color: Color(0xff444444), fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            groupValue: _notificationGroupValue,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 1,
                            activeColor: Color(AppColors.meltingCardColor),
                            onChanged: _notificationFormHandler,
                          ),
                          Text(
                            "5 min earlier",
                            style: TextStyle(
                              color: Color(0xff444444),
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: ScreenUtil().setHeight(5)),
                      RaisedButton(
                        elevation: 1,
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          final NotificationSettings settings =
                              NotificationSettings(
                            (b) => b
                              ..enabled = true
                              ..custom = false
                              ..time = _notificationGroupValue == 0
                                  ? '01:00:00'
                                  : '00:05:00',
                          );
                          _bloc.enableNotification(settings);
                        },
                        color: Color(AppColors.meltingCardColor),
                        child: Container(
                          width: ScreenUtil().setWidth(138),
                          child: Center(
                            child: Text(
                              "Done",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            Routes.WELCOME_BACK,
                          );
                        },
                        child: Center(
                          child: Text(
                            "SKIP",
                            style: TextStyle(
                              color: Color(AppColors.meltingCardColor),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
