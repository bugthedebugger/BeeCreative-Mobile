import 'package:meta/meta.dart';

@immutable
class ApiURL {
  static const String serverURL = 'https://dev.beecreative.asia/';
  static const String _baseURL = serverURL + 'api/';
  static const String login = _baseURL + 'login/google';
  static const String schedules = _baseURL + 'schedules';
  static const String deliveryReport = _baseURL + 'deliveryreport';
  static const String attendance = _baseURL + 'attendance';
  static const String socialUploads = _baseURL + 'socialmedia/uploads';
  static const String narrativeFolder =
      _baseURL + 'socialmedia/create/drive/folder';
  static const String moodMeterSave = _baseURL + 'moodmeter';
  static const String getMoods = _baseURL + 'moods';
  static const String logout = _baseURL + 'logout';
  static const String notification = _baseURL + 'notified/on';
  static const String fcmtoken = _baseURL + 'fcmtoken';
  static const String emailLogin = _baseURL + 'login/email';
}

class MomonationURL {
  static const String serverUrl = 'https://dev.momonation.beecreative.asia/';
  static const String _baseUrl = serverUrl + 'api/v1/';
  static const String feed = _baseUrl + 'feed';
  static const String transfer = _baseUrl + 'transfer';
  static const String comment = _baseUrl + 'comment';
  static const String users = _baseUrl + 'users';
  static const String leaderboards = _baseUrl + 'leaderboard';
}
