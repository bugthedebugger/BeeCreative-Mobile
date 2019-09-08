import 'package:meta/meta.dart';

@immutable
class ApiURL {
  static const String serverUrl = 'https://app.beecreative.asia/';
  static const String _baseUrl = serverUrl + 'api/';
  static const String login = _baseUrl + 'login/google';
  static const String schedules = _baseUrl + 'schedules';
  static const String deliveryReport = _baseUrl + 'deliveryreport';
  static const String attendance = _baseUrl + 'attendance';
  static const String socialUploads = _baseUrl + 'socialmedia/uploads';
  static const String narrativeFolder =
      _baseUrl + 'socialmedia/create/drive/folder';
  static const String moodMeterSave = _baseUrl + 'moodmeter';
  static const String getMoods = _baseUrl + 'moods';
}

class MomonationURL {
  static const String serverUrl = 'https://api.momonation.beecreative.asia/';
  static const String _baseUrl = serverUrl + 'api/v1/';
  static const String feed = _baseUrl + 'feed';
  static const String transfer = _baseUrl + 'transfer';
  static const String comment = _baseUrl + 'comment';
  static const String users = _baseUrl + 'users';
  static const String leaderboards = _baseUrl + 'leaderboard';
}
