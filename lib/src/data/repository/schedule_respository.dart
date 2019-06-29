import 'package:BeeCreative/src/data/exceptions/no_connection_exception.dart';
import 'package:BeeCreative/src/data/exceptions/no_schedules_exception.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/schedule_data_source.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'dart:async';

class ScheduleRepository {
  ScheduleDataSource _scheduleDataSource;

  ScheduleRepository(this._scheduleDataSource);

  Future<ScheduleResponse> getSchedulesFromNetwork(String token) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    final response = await _scheduleDataSource.requestSchedule(token: token);
    if (response == null) throw NoSchedulesError();
    return response;
  }
}
