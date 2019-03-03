import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/shared_preferences/user_shared_preferences.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/melting_card/melting_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoggedInWelcome extends StatefulWidget {
  @override
  LoggedInWelcomeState createState() {
    return new LoggedInWelcomeState();
  }
}

class LoggedInWelcomeState extends State<LoggedInWelcome> {
  String userName = "User Name";
  String avatar;

  _read() async {
    final userSharedPreferences = UserSharedPreferences();
    await userSharedPreferences.initPreferences();
    userName = userSharedPreferences.userName;
    avatar = userSharedPreferences.avatar;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _read();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
      body: MeltingCard(
        color: Color(AppColors.meltingCardColor),
        height: ScreenUtil().setHeight(440),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AvatarCircle(AppPhotos.staticAvatar, avatar),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $userName",
                style: AppFontStyles().loginWelcomeStyle,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(37),
                  vertical: ScreenUtil().setHeight(8),
                ),
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    Routes.SCHEDULES,
                  );
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                /*child: Container(
                  width: ScreenUtil().setWidth(150),
                  height: ScreenUtil().setHeight(30),
                  child: Center(
                    child: Text(
                      "Go to Schedules",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),*/
                child: Text(
                  "Go to Schedules",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
