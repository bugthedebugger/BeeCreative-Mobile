import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:BeeCreative/src/data/network/api_call.dart';

class ConnectionCheck {
  bool _connection = false;
  String _url = ApiURL.serverURL;

  Future<bool> checkConnection() async {
    try {
      var response = await http.get(_url);
      if (response.statusCode == 200) {
        _connection = true;
      }
    } catch (_) {
      _connection = false;
    }
    return _connection;
  }
}
