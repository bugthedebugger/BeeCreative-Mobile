import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/drawer.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchedulesPage extends StatefulWidget {
  _SchedulesPageState createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage> {
  GlobalKey<ScaffoldState> _schedulesScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);
    return Scaffold(
      key: _schedulesScaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Color(AppColors.meltingCardColor),
          ),
          onPressed: () {
            _schedulesScaffoldKey.currentState.openDrawer();
          },
          tooltip: "Drawer Menu",
        ),
        title: Text(
          "Schedules",
          style: TextStyle(
            color: Color(AppColors.meltingCardColor),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: appDrawer,
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            initiallyExpanded: true,
            title: Text(
              "Today",
              style: TextStyle(
                color: Color(AppColors.meltingCardColor),
              ),
            ),
            children: <Widget>[
              ScheduleCard(
                school: "Paragon School",
                content: "Introduction to Dota",
                grade: "Class 6A",
                maleCount: 22,
                femaleCount: 24,
                timeOfDay: "morning",
                startTime: "9:00",
                endTime: "9:30",
                comment1: "This will be your 8th class in 7A.",
                comment2: "Last week, you taught Art of Light.",
                comment3: "You have taken 32 pictures in 7A until now.",
              ),
              ScheduleCard(
                school: "Paragon School",
                content: "Introduction to Dota",
                grade: "Class 6A",
                maleCount: 22,
                femaleCount: 24,
                timeOfDay: "afternoon",
                startTime: "10:00",
                endTime: "10:30",
                comment1: "This will be your 8th class in 7A.",
                comment2: "Last week, you taught Art of Light.",
                comment3: "You have taken 32 pictures in 7A until now.",
              ),
              ScheduleCard(
                school: "Paragon School",
                content: "Introduction to Dota",
                grade: "Class 6A",
                maleCount: 22,
                femaleCount: 24,
                timeOfDay: "evening",
                startTime: "11:00",
                endTime: "11:30",
                comment1: "This will be your 8th class in 7A.",
                comment2: "Last week, you taught Art of Light.",
                comment3: "You have taken 32 pictures in 7A until now.",
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
