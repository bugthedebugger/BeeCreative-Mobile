import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class NotificationDataSource {
  final http.Client _client;

  NotificationDataSource(this._client);

  Future<bool> enableNotification({
    @required String token,
    @required String time,
  }) async {
    var url = ApiURL.notification;
    var parsedURL = Uri.encodeFull(url);

    final response = await _client.post(parsedURL, headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    }, body: {
      'time': time,
    });

    // print(response.body);
    // print('status code: ${response.statusCode}');

    if (response.statusCode == 200) {
      return true;
    } else {
      throw NotificationException(response.body);
    }
  }
}
