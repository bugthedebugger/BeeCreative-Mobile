import 'package:flutter/material.dart';

@immutable
class ApiURL {
  static String _baseUrl = "https://dev.beecreative.asia/api/";
  static String login = _baseUrl + "login/google";
  static String schedules = _baseUrl + "schedules";
}
