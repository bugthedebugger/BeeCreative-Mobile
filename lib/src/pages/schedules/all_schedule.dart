import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/pages/schedules/schedules_tile.dart';
import 'package:BeeCreative/src/widgets/schedule_scaffold/scaffold.dart';
import 'package:BeeCreative/src/widgets/schedule_scaffold/scaffold_key.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'dart:async';

class SchedulesPage extends StatefulWidget {
  _SchedulesPageState createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage> {
  final _scheduleBloc = kiwi.Container().resolve<ScheduleBloc>();

  _read() async {
    _scheduleBloc.init();
  }

  @override
  void initState() {
    super.initState();
    _read();
  }

  @override
  void dispose() {
    super.dispose();
    _scheduleBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedtoday = DateFormat("yyyy-MM-dd").format(DateTime.now());
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return buildScaffold(
      key: scheduleHomeScaffoldKey,
      title: "Schedules",
      body: StreamBuilder(
        stream: _scheduleBloc.scheduleEventsStream,
        builder: (context, snapshot) {
          if (snapshot.data is SchedulesLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.data is ScheduleLoadedSuccessfully) {
            var groupedSchedule = groupBy(
              snapshot.data.scheduleResponse.schedule,
              (obj) => obj.deliveryDate,
            );
            if (groupedSchedule.keys.contains(formattedtoday)) {
              Map<dynamic, List> tempSchedule = {
                formattedtoday: groupedSchedule[formattedtoday]
              };
              tempSchedule.addAll(groupedSchedule);
              groupedSchedule = tempSchedule;
            }
            BuiltList<ScheduleResponseData> scheduleResponseData =
                snapshot.data.scheduleResponse.data;
            return RefreshIndicator(
              onRefresh: () async {
                _scheduleBloc.reloadSchedules();
                return await Future.delayed(Duration(milliseconds: 200));
              },
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                addAutomaticKeepAlives: true,
                itemCount: _schedulesCount(groupedSchedule),
                itemBuilder: (context, index) {
                  var key = groupedSchedule.keys.toList()[index];
                  String scheduleDate = key.toString();
                  return SchedulesTile(
                    schedules: groupedSchedule[key],
                    scheduleDate: scheduleDate,
                    scheduleResponseList: scheduleResponseData,
                  );
                },
              ),
            );
          } else if (snapshot.data is SchedulesError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    AppPhotos.noInternet,
                    width: ScreenUtil().setWidth(154),
                    height: ScreenUtil().setHeight(134),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  Text(
                    snapshot.data.message,
                    style: AppFontStyles().textStyle15BlackMedium,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  RaisedButton(
                    onPressed: () {
                      _scheduleBloc.reloadSchedules();
                    },
                    color: Color(AppColors.meltingCardColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(50),
                        vertical: ScreenUtil().setHeight(8),
                      ),
                      child: Text(
                        "Retry",
                        style: AppFontStyles().textStyle15WhiteMedium,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.data is SchedulesReloading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.data is NoSchedules) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    AppPhotos.noSchedules,
                    width: ScreenUtil().setWidth(154),
                    height: ScreenUtil().setHeight(134),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  Text(
                    "You haven't added any schedules yet",
                    style: AppFontStyles().textStyle15BlackMedium,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Visit ",
                        style: AppFontStyles().textStyle12BlackItalic,
                      ),
                      Text(
                        "app.beecreative.asia ",
                        style: AppFontStyles().textStyle12BlackItalic,
                      ),
                      Text(
                        "to add schedules",
                        style: AppFontStyles().textStyle12BlackItalic,
                      )
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  RaisedButton(
                    onPressed: () {
                      _scheduleBloc.reloadSchedules();
                    },
                    color: Color(AppColors.meltingCardColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(50),
                        vertical: ScreenUtil().setHeight(8),
                      ),
                      child: Text(
                        "Refresh",
                        style: AppFontStyles().textStyle15WhiteMedium,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  int _schedulesCount(schedule) {
    if (schedule != null)
      return schedule.length;
    else
      return 0;
  }

  List<Widget> scheduleListBuilder(groupedSchedule) {
    List<Widget> lists = [];
    var keys = groupedSchedule.keys.toList();
    for (int i = 0; i < _schedulesCount(groupedSchedule); i++) {
      String scheduleDate = keys[i].toString();
      lists.add(
        SchedulesTile(
          schedules: groupedSchedule[scheduleDate],
          scheduleDate: scheduleDate,
        ),
      );
    }

    return lists;
  }
}
