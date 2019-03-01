import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/schedule_data_source.dart';

class ScheduleRepository {
  ScheduleDataSource _scheduleDataSource;

  ScheduleRepository(this._scheduleDataSource);

  Future<ScheduleResponse> getSchedulesFromNetwork(String token) async {
    final response = await _scheduleDataSource.requestSchedule(token: token);
    print("before");
    if (response == null) throw NoSchedulesError();
    print("here");
    print(response);
    return response;
  }
}

class NoSchedulesError implements Exception {
  String message = "No schedules found";
}
