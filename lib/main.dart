import 'package:BeeCreative/injection_container.dart';
import 'package:BeeCreative/src/assets_repo/routes.dart';
import 'package:BeeCreative/src/pages/after_login_welcome_page/welcome.dart';
import 'package:BeeCreative/src/pages/beecreative_login/email_login.dart';
import 'package:BeeCreative/src/pages/beecreative_login/login.dart';
import 'package:BeeCreative/src/pages/beecreative_notification_welcome.dart/notification_welcome.dart';
import 'package:BeeCreative/src/pages/beecreative_splash_screen/splash_screen.dart';
import 'package:BeeCreative/src/pages/beecreative_tutorial/welcome.dart';
import 'package:BeeCreative/src/pages/schedules/all_schedule.dart';
import 'package:flutter/material.dart';

void main() {
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BeeCreative Mobile",
      initialRoute: '/',
      routes: {
        Routes.SPLASH_SCREEN: (context) => SplashScreen(),
        Routes.TUTORIAL: (context) => WelcomePage(),
        Routes.GOOGLE_LOGIN: (context) => LoginScreen(),
        Routes.EMAIL_LOGIN: (context) => EmailLoginScreen(),
        Routes.NOTIFICATION_SETUP: (context) => NotificationWelcome(),
        Routes.WELCOME_BACK: (context) => LoggedInWelcome(),
        Routes.SCHEDULES: (context) => SchedulesPage(),
      },
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    );
  }
}
