import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserSharedPreferences {
  SharedPreferences _preferences;
  String _userName;
  String _avatar;
  String _email;
  String _token;
  bool _moodmeterEnabled;
  bool _momonationEnabled;

  UserSharedPreferences() {
    // _initPreferences();
  }

  Future<void> initPreferences() async {
    _preferences = await SharedPreferences.getInstance();
    try {
      _userName = _preferences.get('userName');
      _avatar = _preferences.get('avatar');
      _email = _preferences.get('email');
      _token = _preferences.get('token');
      _momonationEnabled = _preferences.getBool('momonation_enabled');
      _moodmeterEnabled = _preferences.getBool('moodmeter_enabled');
    } catch (_) {}
  }

  String get userName => _userName;
  String get avatar => _avatar;
  String get email => _email;
  String get token => _token;
  bool get momonation => _momonationEnabled;
  bool get moodmeter => _moodmeterEnabled;
}
