import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/pages/schedules/schedules_tile.dart';
import 'package:BeeCreative/src/widgets/app_bar/app_bar.dart';
import 'package:BeeCreative/src/widgets/drawer/drawer.dart';
import 'package:BeeCreative/src/widgets/schedule_scaffold/scaffold_key.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class SchedulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return BlocProvider(
      bloc: kiwi.Container().resolve<ScheduleBloc>(),
      child: SchedulesScaffold(),
    );
  }
}

class SchedulesScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scheduleHomeScaffoldKey,
      appBar: mainAppBar(title: 'Schedules'),
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
      body: StreamBuilder(
        stream: BlocProvider.of<ScheduleBloc>(context).scheduleEventsStream,
        builder: _scheduleBuilder,
      ),
    );
  }

  int _schedulesCount(schedule) {
    if (schedule != null)
      return schedule.length;
    else
      return 0;
  }

  Widget _scheduleBuilder(context, AsyncSnapshot snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      BlocProvider.of<ScheduleBloc>(context).reInit();
    }

    String formattedtoday = DateFormat("yyyy-MM-dd").format(DateTime.now());
    ScheduleBloc _scheduleBloc = BlocProvider.of<ScheduleBloc>(context);
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
              style: AppFontStyles(context).textStyle15BlackMedium,
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
                  style: AppFontStyles(context).textStyle15WhiteMedium,
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
              style: AppFontStyles(context).textStyle15BlackMedium,
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Visit ",
                  style: AppFontStyles(context).textStyle12BlackItalic,
                ),
                Text(
                  "app.beecreative.asia ",
                  style: AppFontStyles(context).textStyle12BlackItalic,
                ),
                Text(
                  "to add schedules",
                  style: AppFontStyles(context).textStyle12BlackItalic,
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
                  style: AppFontStyles(context).textStyle15WhiteMedium,
                ),
              ),
            ),
          ],
        ),
      );
    } else if (!snapshot.hasData) {
      _scheduleBloc.init();
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
