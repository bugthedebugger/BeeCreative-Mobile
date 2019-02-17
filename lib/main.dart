import 'package:BeeCreative/src/pages/beecreative_splash_screen/splash_screen.dart';
import 'package:BeeCreative/src/pages/schedules/all_schedule.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BeeCreative Mobile",
      // home: SplashScreen(),
      home: SchedulesPage(),
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    );
  }
}
