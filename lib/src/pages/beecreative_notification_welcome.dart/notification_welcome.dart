import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/shared_preferences/user_shared_preferences.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/melting_card/melting_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWelcome extends StatefulWidget {
  _NotificationWelcomeState createState() => _NotificationWelcomeState();
}

class _NotificationWelcomeState extends State<NotificationWelcome> {
  int _notificationGroupValue = 0;
  String userName = 'User Name';
  String avatar;

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
    super.initState();
    _read();
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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: <Widget>[
            MeltingCard(
              color: Color(AppColors.meltingCardColor),
              height: ScreenUtil().setHeight(300),
              child: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(150)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AvatarCircle(AppPhotos.staticAvatar, avatar),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$userName",
                      style: AppFontStyles().textStyle20White,
                    ),
                  ],
                )),
              ),
            ),
            Form(
                key: _notificationFormKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(50)),
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
                      SizedBox(
                        height: 12,
                      ),
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
                            "the evening before",
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
                            value: 2,
                            activeColor: Color(AppColors.meltingCardColor),
                            onChanged: _notificationFormHandler,
                          ),
                          Text(
                            "5 min earlier",
                            style: TextStyle(
                                color: Color(0xff444444), fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: ScreenUtil().setHeight(15)),
                      RaisedButton(
                        elevation: 1,
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            Routes.WELCOME_BACK,
                          );
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
                          )),
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
                                fontSize: 15),
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
