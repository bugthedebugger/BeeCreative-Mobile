import 'dart:async';

import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/mood_meter_response/mood_meter_response.dart';
import 'package:BeeCreative/src/data/network/moodmeter_data_source.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoodMeterRepository {
  final MoodMeterDataSource _dataSource;
  final SharedPreferences _preferences;

  MoodMeterRepository(this._dataSource, this._preferences);

  Future<MoodMeterResponse> saveMood({@required int mood}) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    return _dataSource.saveMood(
      token: _preferences.get('token'),
      mood: mood,
    );
  }
}
