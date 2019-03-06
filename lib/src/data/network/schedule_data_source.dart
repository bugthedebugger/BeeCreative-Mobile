import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/models/user/user_error.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:async';

class ScheduleDataSource {
  http.Client client;

  ScheduleDataSource(this.client);

  Future<ScheduleResponse> requestSchedule({@required String token}) async {
    final url = ApiURL.schedules;
    final encodedUrl = Uri.encodeFull(url);
    final _token = "Bearer $token";
    final response = await client.get(encodedUrl, headers: {
      'Authorization': _token,
    });

    if (response.statusCode == 200) {
      return ScheduleResponse.fromJson(response.body);
    } else if (response.statusCode == 401) {
      throw Unauthenticated();
    }
  }
}
