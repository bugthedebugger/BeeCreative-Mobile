import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/pages/class_details/class_details.dart';
import 'package:BeeCreative/src/widgets/class_cancelled_card/class_cancelled_card.dart';
import 'package:BeeCreative/src/widgets/delivery_report_card/delivery_report_card.dart';
import 'package:BeeCreative/src/widgets/schedule_card/schedule_card.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SchedulesTile extends StatefulWidget {
  BuiltList<ScheduleResponseData> _scheduleResponseList;
  List _schedules;
  DateTime _scheduleDate;
  String _date;
  String _rawFormat = "yyyy-MM-dd";
  bool today = false;

  SchedulesTile({
    Key key,
    List schedules,
    String scheduleDate,
    BuiltList<ScheduleResponseData> scheduleResponseList,
  }) : super(key: key) {
    this._scheduleResponseList = scheduleResponseList;
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
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    List<Widget> _tileData = [
      Padding(
        padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(25), top: ScreenUtil().setHeight(10)),
        child: Text(
          "${widget._date}",
          style: TextStyle(
            color: Color(AppColors.meltingCardColor),
            fontSize: ScreenUtil().setSp(15),
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
          Padding(
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
                size: ScreenUtil().setHeight(16),
              ),
            ),
          ),
        ];
        if (schedule.deliveryReport.delivered != null) {
          if (!schedule.deliveryReport.delivered) {
            secondaryActionList.add(
              Padding(
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
                    size: ScreenUtil().setHeight(13),
                  ),
                ),
              ),
            );
          }
        } else {
          secondaryActionList.add(
            Padding(
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
                  size: ScreenUtil().setHeight(13),
                ),
              ),
            ),
          );
        }

        handleButton() {
          ScheduleResponseData response =
              widget._scheduleResponseList.firstWhere(
            (data) {
              if (data.classId == schedule.classId)
                return true;
              else
                return false;
            },
          );
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ClassDetails(
                schedule: schedule,
                timeOfDay: timeOfDay,
                scheduleResponseData: response,
              ),
            ),
          );
        }

        scheduleCardList.add(
          Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.10,
            child: ScheduleCard(
              schedule: schedule,
              timeOfDay: timeOfDay,
              buttonLabel: "Go to Class",
              function: handleButton,
              openCard: widget.today,
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
  final Schedule schedule;
  ClassDeliveredButton({
    Key key,
    @required this.context,
    @required this.schedule,
  }) : super(key: key);

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

class ClassCancelledButton extends StatefulWidget {
  final Schedule schedule;
  ClassCancelledButton({
    @required this.schedule,
  });

  @override
  _ClassCancelledButtonState createState() => _ClassCancelledButtonState();
}

class _ClassCancelledButtonState extends State<ClassCancelledButton> {
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
                  child: ClassCancelledCard(widget.schedule),
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
