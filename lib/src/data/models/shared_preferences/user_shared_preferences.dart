import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserSharedPreferences {
  SharedPreferences _preferences;
  String _userName;
  String _avatar;
  String _email;
  String _token;

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
    } catch (_) {}
  }

  String get userName => _userName;
  String get avatar => _avatar;
  String get email => _email;
  String get token => _token;
}
