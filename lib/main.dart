import 'package:BeeCreative/injection_container.dart';
import 'package:BeeCreative/src/assets_repo/routes.dart';
import 'package:BeeCreative/src/pages/after_login_welcome_page/welcome.dart';
import 'package:BeeCreative/src/pages/beecreative_login/email_login.dart';
import 'package:BeeCreative/src/pages/beecreative_login/login.dart';
import 'package:BeeCreative/src/pages/beecreative_notification_welcome.dart/notification_welcome.dart';
import 'package:BeeCreative/src/pages/beecreative_splash_screen/splash_screen.dart';
import 'package:BeeCreative/src/pages/beecreative_tutorial/welcome.dart';
import 'package:BeeCreative/src/pages/schedules/all_schedule.dart';
import 'package:BeeCreative/src/pages/under_construction_page/under_construction.dart';
import 'package:flutter/material.dart';

Future main() async {
  await initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BeeCreative Mobile",
      initialRoute: '/',
      routes: {
        Routes.SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        Routes.TUTORIAL: (BuildContext context) => WelcomePage(),
        Routes.GOOGLE_LOGIN: (BuildContext context) => LoginScreen(),
        Routes.EMAIL_LOGIN: (BuildContext context) => EmailLoginScreen(),
        Routes.NOTIFICATION_SETUP: (BuildContext context) =>
            NotificationWelcome(),
        Routes.WELCOME_BACK: (BuildContext context) => LoggedInWelcome(),
        Routes.SCHEDULES: (BuildContext context) => SchedulesPage(),
        Routes.UNDER_CONSTRUCTION: (BuildContext context) =>
            UnderConstruction(),
      },
      theme: ThemeData(
        fontFamily: "Poppins",
        cursorColor: Color(0xff444444),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
