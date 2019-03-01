import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/delivery_report_card/class_cancelled_card.dart';
import 'package:BeeCreative/src/widgets/delivery_report_card/delivery_report_card.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SchedulesTile extends StatefulWidget {
  List<Schedule> _schedules;
  DateTime _scheduleDate;
  String _date;
  String _rawFormat = "yyyy-MM-dd";
  bool today = false;

  SchedulesTile({
    Key key,
    List<Schedule> schedules,
    String scheduleDate,
  }) : super(key: key) {
    this._schedules = schedules;
    this._scheduleDate = DateFormat(this._rawFormat).parse(scheduleDate);
    String todayDate =
        DateFormat(this._rawFormat).parse(DateTime.now().toString()).toString();
    if (this._scheduleDate.toString() == todayDate) {
      today = true;
      this._date =
          "Today, " + DateFormat.yMMMMEEEEd().format(this._scheduleDate);
    } else {
      this._date = DateFormat.yMMMMEEEEd().format(this._scheduleDate);
    }
  }

  @override
  SchedulesTileState createState() {
    return new SchedulesTileState();
  }
}

class SchedulesTileState extends State<SchedulesTile>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);
    // return ExpansionTile(
    //   // initiallyExpanded: (widget._today) ? true : false,
    //   initiallyExpanded: true,
    //   title: Text(
    //     "${widget._date}",
    //     style: TextStyle(
    //       color: Color(AppColors.meltingCardColor),
    //     ),
    //   ),
    //   trailing: null,
    //   children: getList(),
    // );
    List<Widget> _tileData = [
      Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 10.0),
        child: Text(
          "${widget._date}",
          style: TextStyle(
            color: Color(AppColors.meltingCardColor),
            fontSize: 15.0,
          ),
        ),
      ),
    ];
    _tileData.insertAll(1, getList());
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _tileData,
      ),
    );
  }

  List<Widget> getList() {
    List<Widget> scheduleCardList = [];
    widget._schedules.forEach(
      (schedule) {
        int hour = int.parse(schedule.startTime.substring(0, 2));
        String timeOfDay;

        if (hour < 11)
          timeOfDay = 'morning';
        else if (hour >= 11 && hour < 14)
          timeOfDay = 'afternoon';
        else
          timeOfDay = 'evening';

        List<Widget> secondaryActionList = [
          ClassDeliveredButton(
            context: context,
            schedule: schedule,
          ),
        ];
        if (schedule.deliveryReport.delivered != null) {
          if (!schedule.deliveryReport.delivered) {
            secondaryActionList.add(
              ClassCancelledButton(
                context: context,
                schedule: schedule,
              ),
            );
          }
        } else {
          secondaryActionList.add(
            ClassCancelledButton(
              context: context,
              schedule: schedule,
            ),
          );
        }

        scheduleCardList.add(
          Slidable(
            delegate: SlidableDrawerDelegate(),
            actionExtentRatio: 0.10,
            child: ScheduleCard(
              schedule: schedule,
              school: Uri.decodeFull(schedule.schoolName),
              content: (schedule.content == null)
                  ? "No content was set"
                  : schedule.content,
              grade: schedule.grade + " " + schedule.section,
              maleCount: 0,
              femaleCount: 0,
              timeOfDay: timeOfDay,
              startTime: schedule.startTime,
              endTime: schedule.endTime,
              // comment1: "This section is coming soon please be patient :)",
              comment1: (schedule.comment != null) ? schedule.comment[0] : "",
            ),
            secondaryActions: secondaryActionList,
          ),
        );
      },
    );

    return scheduleCardList;
  }

  @override
  bool get wantKeepAlive => true;
}

class ClassDeliveredButton extends StatelessWidget {
  Schedule schedule;
  ClassDeliveredButton({
    Key key,
    @required this.context,
    @required Schedule schedule,
  }) : super(key: key) {
    this.schedule = schedule;
  }

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SlideAction(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Theme(
                data: ThemeData(
                  dialogBackgroundColor: Colors.transparent,
                ),
                child: Dialog(
                  shape: RoundedRectangleBorder(),
                  child: DeliveryReportCard(schedule),
                ),
              );
            },
          );
        },
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Color(0x33000000),
              offset: Offset(0, 1),
            )
          ],
          shape: BoxShape.circle,
          color: Color(
            AppColors.deliveryRatingColor,
          ),
        ),
        child: Icon(
          Icons.star,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ClassCancelledButton extends StatelessWidget {
  Schedule schedule;
  ClassCancelledButton({
    Key key,
    @required this.context,
    @required Schedule schedule,
  }) : super(key: key) {
    this.schedule = schedule;
  }

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SlideAction(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Theme(
                data: ThemeData(
                  dialogBackgroundColor: Colors.transparent,
                ),
                child: Dialog(
                  shape: RoundedRectangleBorder(),
                  child: ClassCancelledCard(schedule),
                ),
              );
            },
          );
        },
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Color(0x33000000),
              offset: Offset(0, 1),
            )
          ],
          shape: BoxShape.circle,
          color: Color(AppColors.classCancelledColor),
        ),
        child: Icon(
          FontAwesomeIcons.times,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}
