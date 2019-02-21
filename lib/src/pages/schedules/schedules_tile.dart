import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    return ExpansionTile(
      // initiallyExpanded: (widget._today) ? true : false,
      initiallyExpanded: true,
      title: Text(
        "${widget._date}",
        style: TextStyle(
          color: Color(AppColors.meltingCardColor),
        ),
      ),
      children: getList(),
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
        ScheduleCard(
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
          comment1: "This section is coming soon please be patient :)",
        ),
      );
    });

    return scheduleCardList;
  }

  @override
  bool get wantKeepAlive => true;
}
