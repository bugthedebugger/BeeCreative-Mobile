import 'package:flutter/material.dart';
import 'appcolors.dart';

class AppFontStyles {
  static double _gettingStartedBody = 18.0;
  static double _gettingStartedHeader = 28.0;
  static double _gettingStartedEndHeader = 24.0;
  static double _loginInfoText = 16.0;
  static double _loginWelcomeText = 21.0;
  static double _drawerHeaderTextSize = 21.0;
  static double _drawerSubTextSize = 16.0;
  static double _drawerListTextSize = 18.0;
  static double _18TextSize = 18.0;
  static double _16TextSize = 16.0;
  static double _15TextSize = 15.0;
  static double _12TextSize = 12.0;
  static double _20TextSize = 20.0;

  static TextStyle _welcAttendanceHeader = TextStyle(
      fontSize: _gettingStartedHeader,
      color: Color(AppColors.welcAttendanceColor));

  static TextStyle _welcPhotosHeader = TextStyle(
      fontSize: _gettingStartedHeader,
      color: Color(AppColors.welcTakePhotosColor));

  static TextStyle _welcRandomizerHeader = TextStyle(
      fontSize: _gettingStartedHeader,
      color: Color(AppColors.welcRandomizerColor));

  static TextStyle _gettingStBody = TextStyle(
      fontSize: _gettingStartedBody, color: Color(AppColors.welcBodyColor));

  static TextStyle _welcEnd = TextStyle(
      fontSize: _gettingStartedHeader, color: Color(AppColors.welcEnd));

  static TextStyle _welcendHeader = TextStyle(
      fontSize: _gettingStartedEndHeader, color: Color(AppColors.welcEnd));

  static TextStyle _loginInfoTextSt = TextStyle(
      fontSize: _loginInfoText, color: Color(AppColors.loginInfoText));

  static TextStyle _loginWithEmailSt = TextStyle(
      fontSize: _loginInfoText, color: Color(AppColors.loginWithEmailText));

  static TextStyle _loginButtonSt =
      TextStyle(fontSize: _loginInfoText, color: Colors.white);

  static TextStyle _loginHintSt = TextStyle(color: Color(AppColors.emailHint));

  static TextStyle _loginLabel = TextStyle(color: Color(AppColors.loginButton));

  static TextStyle _loginWelcomeLabel = TextStyle(
    color: Colors.white,
    fontSize: _loginWelcomeText,
    // fontWeight: FontWeight.bold
  );

  static TextStyle _drawerHeaderStyle = TextStyle(
    color: Colors.white,
    fontSize: _drawerHeaderTextSize,
  );

  static TextStyle _drawerSubTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _drawerSubTextSize,
  );

  static TextStyle _drawerListTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _drawerListTextSize,
  );

  static TextStyle _18TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _18TextSize,
  );

  static TextStyle _16TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _16TextSize,
  );

  static TextStyle _15TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _15TextSize,
  );

  static TextStyle _12TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _12TextSize,
  );

  static TextStyle _20TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _20TextSize,
  );

  static TextStyle _12TextBlackBold = TextStyle(
    color: Color(0xff444444),
    fontSize: _12TextSize,
    fontWeight: FontWeight.bold,
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
  TextStyle get loginWelcomeStyle => _loginWelcomeLabel;
  TextStyle get drawerHeaderStyle => _drawerHeaderStyle;
  TextStyle get drawerSubTextStyle => _drawerSubTextStyle;
  TextStyle get drawerListTextStyle => _drawerListTextStyle;
  TextStyle get textStyle18White => _18TextStyleWhite;
  TextStyle get textStyle16White => _16TextStyleWhite;
  TextStyle get textStyle15White => _15TextStyleWhite;
  TextStyle get textStyle12White => _12TextStyleWhite;
  TextStyle get textStyle20White => _20TextStyleWhite;
  TextStyle get textStyle12BlackBold => _12TextBlackBold;
}
