import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
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
  bool _today = false;

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
      _today = true;
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
    widget._schedules.forEach((schedule) {
      int hour = int.parse(schedule.startTime.substring(0, 2));
      String timeOfDay;

      if (hour < 11)
        timeOfDay = 'morning';
      else if (hour >= 11 && hour < 14)
        timeOfDay = 'afternoon';
      else
        timeOfDay = 'evening';

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
          secondaryActions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SlideAction(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0xaa000000),
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
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: SlideAction(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0xaa000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.cancel,
                  color: Color(
                    AppColors.classCancelledColor,
                  ),
                  size: 39,
                ),
              ),
            ),
          ],
        ),
      );
    });

    return scheduleCardList;
  }

  @override
  bool get wantKeepAlive => true;
}
