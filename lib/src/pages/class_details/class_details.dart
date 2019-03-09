import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/pages/class_details/attendance.dart';
import 'package:BeeCreative/src/widgets/class_details_notification_card/class_details_notification_card.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_theme_data.dart';
import 'package:BeeCreative/src/widgets/schedule_scaffold/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassDetails extends StatefulWidget {
  final String timeOfDay;
  final Schedule schedule;
  final ScheduleResponseData scheduleResponseData;
  ClassDetails({
    Key key,
    @required this.schedule,
    this.timeOfDay,
    this.scheduleResponseData,
  }) : super(key: key);

  @override
  _ClassDetailsState createState() => _ClassDetailsState();
}

class _ClassDetailsState extends State<ClassDetails>
    with TickerProviderStateMixin {
  TabController tabController;
  void initState() {
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    final Color themeColor =
        Color(ScheduleThemeData(timeOfDay: widget.timeOfDay).cardColor);

    return scaffoldBuilder(
      title: widget.schedule.schoolName,
      grade: 'Class ' + widget.schedule.grade + widget.schedule.section,
      bottomNavigationBar: Container(
        height: ScreenUtil().setHeight(47),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 1,
              color: Color(AppColors.shadowColor),
            ),
          ],
        ),
        child: TabBar(
          controller: tabController,
          indicator: BoxDecoration(
            color: Colors.white,
          ),
          onTap: (index) {
            setState(() {});
          },
          tabs: <Widget>[
            Icon(
              FontAwesomeIcons.home,
              color: (tabController.index == 0)
                  ? themeColor
                  : Color(AppColors.shadowColor),
            ),
            Icon(
              FontAwesomeIcons.clipboardList,
              color: (tabController.index == 1)
                  ? themeColor
                  : Color(AppColors.shadowColor),
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        controller: tabController,
        children: <Widget>[
          ListView(
            children: <Widget>[
              ScheduleCard(
                schedule: widget.schedule,
                buttonLabel: 'See More',
                timeOfDay: widget.timeOfDay,
                openCard: true,
                function: () {},
              ),
              ClassDetailsNotificationCard(),
            ],
          ),
          StudentAttendancePage(
            scheduleResponseData: widget.scheduleResponseData,
            schedule: widget.schedule,
          ),
        ],
      ),
    );
  }
}
