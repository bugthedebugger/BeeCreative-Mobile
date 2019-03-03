import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/models/shared_preferences/user_shared_preferences.dart';
import 'package:BeeCreative/src/pages/schedules/drawer.dart';
import 'package:BeeCreative/src/pages/schedules/scaffold.dart';
import 'package:BeeCreative/src/pages/schedules/scaffold_key.dart';
import 'package:BeeCreative/src/pages/schedules/schedules_tile.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class SchedulesPage extends StatefulWidget {
  _SchedulesPageState createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage> {
  final _scheduleBloc = kiwi.Container().resolve<ScheduleBloc>();
  String _token;

  _read() async {
    final _userSharedPreferences = UserSharedPreferences();
    await _userSharedPreferences.initPreferences();
    _token = _userSharedPreferences.token;
    _scheduleBloc.scheduleRequestInitiated(_token);
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
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);
    return BlocProvider(
      bloc: _scheduleBloc,
      child: buildScaffold(
        key: schedulesScaffoldKey,
        body: BlocBuilder(
          bloc: _scheduleBloc,
          builder: (context, ScheduleState state) {
            if (state.isLoading == true) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (state.scheduleResponse.schedule != null) {
                var groupedSchedule = groupBy(
                    state.scheduleResponse.schedule, (obj) => obj.deliveryDate);
                if (groupedSchedule.keys.contains(formattedtoday)) {
                  Map<dynamic, List<Schedule>> tempSchedule = {
                    formattedtoday: groupedSchedule[formattedtoday]
                  };
                  tempSchedule.addAll(groupedSchedule);
                  groupedSchedule = tempSchedule;
                }
                return RefreshIndicator(
                  onRefresh: () async {
                    _scheduleBloc.reloadSchedule(_token);

                    // return await Future.doWhile(() async {
                    //   if (!_stop) return !_stop;
                    // });
                    return await _stopRefreshCondition();
                  },
                  child: Container(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      addAutomaticKeepAlives: true,
                      itemCount: _schedulesCount(groupedSchedule),
                      itemBuilder: (context, index) {
                        var key = groupedSchedule.keys.toList()[index];
                        // print(groupedSchedule[key]);
                        String scheduleDate = key.toString();
                        return SchedulesTile(
                          schedules: groupedSchedule[key],
                          scheduleDate: scheduleDate,
                        );
                      },
                    ),
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }
          },
        ),
      ),
    );
  }

  int _schedulesCount(schedule) {
    if (schedule != null)
      return schedule.length;
    else
      return 0;
  }

  Future<Null> _stopRefreshCondition() async {
    bool _stop = false;
  }
}
