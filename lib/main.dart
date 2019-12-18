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
import 'package:BeeCreative/src/pages/settings/settings.dart';
import 'package:BeeCreative/src/pages/under_construction_page/under_construction.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:firebase_messaging/firebase_messaging.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initKiwi();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseAnalytics analytics =
      kiwi.Container().resolve<FirebaseAnalytics>();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    try {
      _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('on message $message');
        },
        onResume: (Map<String, dynamic> message) async {
          print('on resume $message');
        },
        onLaunch: (Map<String, dynamic> message) async {
          print('on launch $message');
        },
      );
    } catch (_) {
      print(_);
    }
  }

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
        Routes.SETTINGS: (BuildContext context) => SettingsPage(),
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
