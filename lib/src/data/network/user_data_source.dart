import 'dart:convert';

import 'package:BeeCreative/src/data/models/user/user_error.dart';
import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:async';

class UserDataSource {
  final http.Client client;

  UserDataSource(this.client);

  Future<User> requestLogin({@required String token}) async {
    final url = ApiURL.login;
    final encodedUrl = Uri.encodeFull(url);
    final response = await client.post(encodedUrl, body: {
      'token': token,
    });
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    } else {
      throw UserError(
        "Received response: ${json.decode(response.body)['error']} code: ${json.decode(response.body)['code']}",
      );
    }
  }
}
