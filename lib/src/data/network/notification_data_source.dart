import 'dart:convert';

import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class NotificationDataSource {
  final http.Client _client;

  NotificationDataSource(this._client);

  Future<bool> enableNotification({
    @required String token,
    @required String fcmToken,
  }) async {
    var url = ApiURL.fcmtoken;
    var parsedURL = Uri.encodeFull(url);
    // print('Inside enable notification function of data source');
    final response = await _client.post(
      parsedURL,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: json.encode(
        {
          'fcm_token': fcmToken,
        },
      ),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw NotificationException(response.body);
    }
  }

  Future<bool> setNotificationTime({
    @required String token,
    @required String time,
    bool notify = true,
  }) async {
    var url = ApiURL.notification;
    var parsedURL = Uri.encodeFull(url);
    // print('Inside setNotification function of data source');
    final response = await _client.post(
      parsedURL,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: json.encode(
        {
          'notify': notify,
          'time': time,
        },
      ),
    );

    // print(response.body);
    // print('status code: ${response.statusCode}');

    if (response.statusCode == 200) {
      return true;
    } else {
      throw NotificationException(response.body);
    }
  }
}
