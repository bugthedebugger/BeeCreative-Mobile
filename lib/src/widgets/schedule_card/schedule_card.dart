import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_them_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/animation.dart';

class ScheduleCard extends StatefulWidget {
  final String school;
  final String content;
  final String grade;
  final int maleCount;
  final int femaleCount;
  final String startTime;
  final String endTime;
  final String timeOfDay;
  final String comment1;
  final String comment2;
  final String comment3;
  ScheduleThemeData scheduleThemeData;

  ScheduleCard({
    Key key,
    this.school,
    this.grade,
    this.content,
    this.maleCount,
    this.femaleCount,
    this.timeOfDay,
    this.startTime,
    this.endTime,
    this.comment1 = "",
    this.comment2 = "",
    this.comment3 = "",
  }) : super(key: key) {
    this.scheduleThemeData = ScheduleThemeData(timeOfDay: this.timeOfDay);
  }

  @override
  ScheduleCardState createState() {
    return ScheduleCardState();
  }
}

class ScheduleCardState extends State<ScheduleCard>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  final _minimizedCard = 70.0;
  final _expandedCard = 264.0;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = Tween(
      begin: _minimizedCard,
      end: _expandedCard,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(
                      "${widget.startTime}",
                      style: AppFontStyles().textStyle12BlackBold,
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(
                      "${widget.endTime}",
                      style: AppFontStyles().textStyle12BlackBold,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!_expanded) {
                    _controller.forward();
                    _expanded = true;
                  } else {
                    _controller.reverse();
                    _expanded = false;
                  }
                },
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                  ),
                  width: ScreenUtil().setWidth(289),
                  height: ScreenUtil().setHeight(_animation.value.toInt()),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(widget.scheduleThemeData.cardColor),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                          color: Color(0x33000000),
                        ),
                      ]),
                  child: Stack(
                    overflow: Overflow.clip,
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${widget.school}",
                              style: AppFontStyles().textStyle15White,
                            ),
                            Text(
                              "${widget.content}",
                              style: AppFontStyles().textStyle12White,
                            ),
                            Text(
                              "${widget.grade}",
                              style: AppFontStyles().textStyle12White,
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        top: ScreenUtil().setHeight(64),
                        child: Row(
                          children: <Widget>[
                            GenderCountCard(
                              gender: "boys",
                              genderCount: widget.maleCount,
                              genderIcon: widget.scheduleThemeData.maleIcon,
                              timeOfDay: widget.timeOfDay,
                            ),
                            SizedBox(width: ScreenUtil().setWidth(19)),
                            GenderCountCard(
                              gender: "girls",
                              genderCount: widget.femaleCount,
                              genderIcon: widget.scheduleThemeData.femaleIcon,
                              timeOfDay: widget.timeOfDay,
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        top: ScreenUtil().setHeight(105),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: ScreenUtil().setWidth(264),
                          height: ScreenUtil().setHeight(93),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:
                                Color(widget.scheduleThemeData.darkCardColor),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.comment1,
                                style: AppFontStyles().textStyle15White,
                              ),
                              SizedBox(height: 5),
                              Text(
                                widget.comment2,
                                style: AppFontStyles().textStyle15White,
                              ),
                              SizedBox(height: 5),
                              Text(
                                widget.comment3,
                                style: AppFontStyles().textStyle15White,
                              ),
                            ],
                          ),
                        ),
                      ),

                      /*
                      * Schedule Scene
                      */
                      // Sun
                      Positioned(
                        bottom: ScreenUtil().setHeight(48),
                        right: ScreenUtil().setWidth(47),
                        child: Image.asset(
                          widget.scheduleThemeData.sun,
                          width: ScreenUtil().setWidth(10),
                        ),
                      ),
                      // Right Cloud
                      Positioned(
                        bottom: ScreenUtil().setHeight(48),
                        right: ScreenUtil().setWidth(10),
                        child: Image.asset(
                          widget.scheduleThemeData.cloud,
                          width: ScreenUtil().setWidth(15),
                        ),
                      ),
                      // Left Cloud
                      Positioned(
                        bottom: ScreenUtil().setHeight(35),
                        right: ScreenUtil().setWidth(68),
                        child: Image.asset(
                          widget.scheduleThemeData.cloud,
                          width: ScreenUtil().setWidth(23),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: ScreenUtil().setWidth(16),
                        child: Image.asset(
                          widget.scheduleThemeData.house,
                          width: ScreenUtil().setWidth(47),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GenderCountCard extends StatelessWidget {
  final genderCount;
  final gender;
  final genderIcon;
  final timeOfDay;
  var themeColor;

  GenderCountCard(
      {this.gender, this.genderCount, this.genderIcon, this.timeOfDay}) {
    switch (this.timeOfDay) {
      case "morning":
        this.themeColor = AppColors.morningScheduleCardDark;
        break;
      case "afternoon":
        this.themeColor = AppColors.afternoonScheduleCardDark;
        break;
      case "evening":
        this.themeColor = AppColors.eveningScheduleCardDark;
        break;
      default:
        this.themeColor = AppColors.morningScheduleCardDark;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(9),
      ),
      width: ScreenUtil().setWidth(122),
      height: ScreenUtil().setHeight(32),
      decoration: BoxDecoration(
        color: Color(
          themeColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(15),
            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(3)),
            child: Text(
              "$genderCount",
              style: AppFontStyles().textStyle20White,
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: ScreenUtil().setWidth(35),
            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6)),
            child: Text(
              "$gender",
              style: AppFontStyles().textStyle15White,
            ),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(38),
          ),
          Image.asset(
            genderIcon,
            height: ScreenUtil().setHeight(27),
            // width: ScreenUtil().setWidth(8),
          ),
        ],
      ),
    );
  }
}
