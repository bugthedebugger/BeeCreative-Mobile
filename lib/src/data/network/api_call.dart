import 'package:meta/meta.dart';

@immutable
class ApiURL {
  static const String serverUrl = "https://dev.beecreative.asia/";
  static const String _baseUrl = serverUrl + "api/";
  static const String login = _baseUrl + "login/google";
  static const String schedules = _baseUrl + "schedules";
  static const String deliveryReport = _baseUrl + "deliveryreport";
  static const String attendance = _baseUrl + "attendance";
  static const String socialUploads = _baseUrl + "socialmedia/uploads";
  static const String narrativeFolder =
      _baseUrl + "socialmedia/create/drive/folder";
}
