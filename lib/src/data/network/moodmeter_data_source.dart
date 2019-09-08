import 'dart:async';
import 'dart:convert';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/mood_meter_response/mood_meter_response.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoodMeterDataSource {
  final http.Client _client;

  MoodMeterDataSource(this._client);

  Future<MoodMeterResponse> saveMood(
      {@required String token, @required int mood}) async {
    var url = ApiURL.moodMeterSave;
    var parsedURL = Uri.encodeFull(url);

    final response = await _client.post(
      parsedURL,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: json.encode({
        'mood_id': mood,
      }),
    );
    print(response.body);
    if (response.statusCode == 200) {
      return MoodMeterResponse.fromJson(response.body);
    } else if (response.statusCode == 403) {
      throw Unauthenticated();
    } else {
      throw Exception(response.body);
    }
  }
}
