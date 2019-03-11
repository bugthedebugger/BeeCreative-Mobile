import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/student_randomizer_bloc/student_randomizer_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/models/student/student_model.dart';
import 'package:BeeCreative/src/pages/class_details/attendance.dart';
import 'package:BeeCreative/src/widgets/app_bar/app_bar.dart';
import 'package:BeeCreative/src/widgets/class_details_notification_card/class_details_notification_card.dart';
import 'package:BeeCreative/src/widgets/drawer/drawer.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class ClassDetails extends StatefulWidget {
  final String timeOfDay;
  final Schedule schedule;
  final ScheduleResponseData scheduleResponseData;
  ClassDetails({
    @required this.schedule,
    this.timeOfDay,
    this.scheduleResponseData,
  });

  @override
  _ClassDetailsState createState() => _ClassDetailsState();
}

class _ClassDetailsState extends State<ClassDetails>
    with TickerProviderStateMixin {
  PageController pageController;
  bool randomizer = false;
  int page = 0;
  int prevPage = 0;
  final StudentRandomizerBloc randomizerBloc =
      kiwi.Container().resolve<StudentRandomizerBloc>();

  void initState() {
    randomizerBloc.initializeRandomizer(widget.scheduleResponseData.students);
    pageController = PageController();
    pageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    randomizerBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    final Color themeColor =
        Color(ScheduleThemeData(timeOfDay: widget.timeOfDay).cardColor);

    return Scaffold(
      appBar: mainAppBar(
        grade: 'Class ' + widget.schedule.grade + widget.schedule.section,
        title: widget.schedule.schoolName,
      ),
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        onPageChanged: (pageNumber) {
          page = pageNumber;
        },
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
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
      bottomNavigationBar: Container(
        height: ScreenUtil().setHeight(40),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                page = 0;
                setState(() {});
                pageController.animateToPage(
                  page,
                  curve: Curves.ease,
                  duration: Duration(
                    milliseconds: 300,
                  ),
                );
              },
              child: Icon(
                FontAwesomeIcons.home,
                color: (page == 0) ? themeColor : Color(AppColors.shadowColor),
                size: ScreenUtil().setHeight(18),
              ),
            ),
            GestureDetector(
              onTap: () {
                page = 1;
                setState(() {});
                pageController.animateToPage(
                  page,
                  curve: Curves.ease,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                );
              },
              child: Icon(
                FontAwesomeIcons.clipboardList,
                color: (page == 1) ? themeColor : Color(AppColors.shadowColor),
                size: ScreenUtil().setHeight(18),
              ),
            ),
            GestureDetector(
              onTap: () {
                prevPage = (page != 3) ? page : prevPage;
                page = 3;
                setState(() {});
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return StreamBuilder<Student>(
                      stream: randomizerBloc.studentStream,
                      builder: (context, snapshot) {
                        return Dialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(ScreenUtil().setWidth(13)),
                            width: ScreenUtil().setWidth(331),
                            height: ScreenUtil().setHeight(292),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Randomizer",
                                      style:
                                          AppFontStyles(context).getTextStyle(
                                        fontSize: 20,
                                        color: themeColor,
                                        weight: "medium",
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        page = prevPage;
                                        setState(() {});
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        FontAwesomeIcons.times,
                                        size: ScreenUtil().setHeight(21),
                                        color: themeColor,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: ScreenUtil().setWidth(296),
                                  height: ScreenUtil().setHeight(161),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Color(AppColors.fadedGrey),
                                      width: ScreenUtil().setHeight(1),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        (snapshot.connectionState ==
                                                ConnectionState.waiting)
                                            ? 'Start randomizer'
                                            : (snapshot.hasData)
                                                ? snapshot.data.fname +
                                                    ' ' +
                                                    snapshot.data.lname
                                                : 'No students list.',
                                        style:
                                            AppFontStyles(context).getTextStyle(
                                          color: themeColor,
                                          fontSize: 30,
                                          weight: 'medium',
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(70),
                                  ),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    color: themeColor,
                                    elevation: 0,
                                    onPressed: () {
                                      randomizerBloc.random();
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          FontAwesomeIcons.dice,
                                          color: Colors.white,
                                          size: ScreenUtil().setWidth(15),
                                        ),
                                        Text(
                                          "Random",
                                          style: AppFontStyles(context)
                                              .textStyle12White,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Icon(
                FontAwesomeIcons.dice,
                color: (page == 3) ? themeColor : Color(AppColors.shadowColor),
                size: ScreenUtil().setHeight(18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
