import 'package:BeeCreative/injection_container.dart';
import 'package:BeeCreative/src/assets_repo/routes.dart';
import 'package:BeeCreative/src/pages/after_login_welcome_page/welcome.dart';
import 'package:BeeCreative/src/pages/beecreative_login/email_login.dart';
import 'package:BeeCreative/src/pages/beecreative_login/login.dart';
import 'package:BeeCreative/src/pages/beecreative_notification_welcome.dart/notification_welcome.dart';
import 'package:BeeCreative/src/pages/beecreative_splash_screen/splash_screen.dart';
import 'package:BeeCreative/src/pages/beecreative_tutorial/welcome.dart';
import 'package:BeeCreative/src/pages/momonation/appreciate.dart';
import 'package:BeeCreative/src/pages/momonation/dashboard.dart';
import 'package:BeeCreative/src/pages/momonation/leaderboard.dart';
import 'package:BeeCreative/src/pages/momonation/notification.dart';
import 'package:BeeCreative/src/pages/moodmeter/moodemeter.dart';
import 'package:BeeCreative/src/pages/photo_gallery/photo_gallery.dart';
import 'package:BeeCreative/src/pages/profile/profile.dart';
import 'package:BeeCreative/src/pages/schedules/all_schedule.dart';
import 'package:BeeCreative/src/pages/under_construction_page/under_construction.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kiwi/kiwi.dart' as kiwi;

Future main() async {
  await initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAnalytics analytics =
      kiwi.Container().resolve<FirebaseAnalytics>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BeeCreative Mobile",
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
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
        Routes.USER_PROFILE: (BuildContext context) => UserProfile(),
        Routes.MOMONATION: (BuildContext context) => MomonationDashboard(),
        Routes.MOMONATION_NOTIFICATION: (BuildContext context) =>
            NotificationPage(),
        Routes.LEADERBOARDS: (BuildContext context) => LeaderBoardsPage(),
        Routes.APPRECIATE_PAGE: (BuildContext context) => AppreciatePage(),
        Routes.MOODMETER: (BuildContext context) => MoodMeter(),
        // Routes.PHOTO_GALLERY: (BuildContext context) => PhotoGallery(),
      },
      onGenerateRoute: _getRoute,
      theme: ThemeData(
        fontFamily: "Montserrat",
        cursorColor: Color(0xff444444),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == Routes.PHOTO_GALLERY) {
      return _buildRoute(
        settings,
        PhotoGallery(
          classId: settings.arguments,
        ),
      );
    }
    return null;
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => builder,
    );
  }
}
/*
                  DrawerListTile(
                    image: AppPhotos.drawerHelp,
                    title: "HELP",
                    function: () {},
                  ),
                  DrawerListTile(
                    image: AppPhotos.drawerAbout,
                    title: "ABOUT",
                    function: () {},
                  ),
                  */
