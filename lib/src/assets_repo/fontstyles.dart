import 'package:flutter/material.dart';
import 'appcolors.dart';

class AppFontStyles {

  static double _gettingStartedBody = 18.0;
  static double _gettingStartedHeader = 28.0;
  static double _gettingStartedEndHeader = 24;
  static double _loginInfoText = 16.0;

  static TextStyle _welcAttendanceHeader = TextStyle(
      fontSize: _gettingStartedHeader,
      color: Color(AppColors.welcAttendanceColor)
  );

  static TextStyle _welcPhotosHeader = TextStyle(
      fontSize: _gettingStartedHeader,
      color: Color(AppColors.welcTakePhotosColor)
  );

  static TextStyle _welcRandomizerHeader = TextStyle(
      fontSize: _gettingStartedHeader,
      color: Color(AppColors.welcRandomizerColor)
  );

  static TextStyle _gettingStBody = TextStyle(
      fontSize: _gettingStartedBody,
      color: Color(AppColors.welcBodyColor)
  );

  static TextStyle _welcEnd = TextStyle(
    fontSize: _gettingStartedHeader,
    color: Color(AppColors.welcEnd)
  );

  static TextStyle _welcendHeader = TextStyle(
    fontSize: _gettingStartedEndHeader,
    color: Color(AppColors.welcEnd)
  );

  static TextStyle _loginInfoTextSt = TextStyle(
    fontSize: _loginInfoText,
    color: Color(AppColors.loginInfoText)
  );

  static TextStyle _loginWithEmailSt = TextStyle(
    fontSize: _loginInfoText,
    color: Color(AppColors.loginWithEmailText)
  );

  static TextStyle _loginButtonSt = TextStyle(
    fontSize: _loginInfoText,
    color: Colors.white
  );

  static TextStyle _loginHintSt = TextStyle(
    color: Color(AppColors.emailHint)
  );

  static TextStyle _loginLabel = TextStyle(
    color: Color(AppColors.loginButton)
  );

  TextStyle get gettingStartedBodyStyle => _gettingStBody;
  TextStyle get gettingStartedAttendanceHeadStyle => _welcAttendanceHeader;
  TextStyle get gettingStartedPhotosHeadStyle => _welcPhotosHeader;
  TextStyle get gettingStartedRandomizerHeadStyle => _welcRandomizerHeader;
  TextStyle get gettingStartedWelcEndHeadStyle => _welcendHeader;
  TextStyle get loginInfoTextStyle => _loginInfoTextSt;
  TextStyle get loginWithEmailStyle => _loginWithEmailSt;
  TextStyle get loginButtonStyle => _loginButtonSt;
  TextStyle get loginHintStyle => _loginHintSt;
  TextStyle get loginLabelSteyle => _loginLabel;

}