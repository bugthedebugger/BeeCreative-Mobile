import 'package:flutter/material.dart';

@immutable
class ApiURL {
  static String serverUrl = "https://app.beecreative.asia/";
  static String _baseUrl = serverUrl + "api/";
  static String login = _baseUrl + "login/google";
  static String schedules = _baseUrl + "schedules";
  static String deliveryReport = _baseUrl + "deliveryreport";
}
