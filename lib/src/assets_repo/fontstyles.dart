import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'appcolors.dart';

class AppFontStyles {
  /*
  static double _gettingStartedBody = 18.0;
  static double _gettingStartedHeader = 28.0;
  static double _gettingStartedEndHeader = 24.0;
  static double _loginInfoText = 16.0;
  static double _loginWelcomeText = 21.0;
  static double _drawerHeaderTextSize = 21.0;
  static double _drawerSubTextSize = 16.0;
  static double _drawerListTextSize = 18.0;
  */
  static const int _18TextSize = 18;
  static const int _16TextSize = 16;
  static const int _15TextSize = 15;
  static const int _12TextSize = 12;
  static const int _20TextSize = 20;
  static const int _30TextSize = 30;
  static const int _48TextSize = 48;
  static double _textSizeScaled18;
  static double _textSizeScaled16;
  static double _textSizeScaled15;
  static double _textSizeScaled12;
  static double _textSizeScaled20;
  static double _textSizeScaled30;
  static double _textSizeScaled48;
  var context;

  AppFontStyles(this.context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    _textSizeScaled12 = ScreenUtil().setSp(_12TextSize);
    _textSizeScaled15 = ScreenUtil().setSp(_15TextSize);
    _textSizeScaled16 = ScreenUtil().setSp(_16TextSize);
    _textSizeScaled18 = ScreenUtil().setSp(_18TextSize);
    _textSizeScaled20 = ScreenUtil().setSp(_20TextSize);
    _textSizeScaled30 = ScreenUtil().setSp(_30TextSize);
    _textSizeScaled48 = ScreenUtil().setSp(_48TextSize);
  }

  static TextStyle _welcAttendanceHeader = TextStyle(
      fontSize: _textSizeScaled20, color: Color(AppColors.welcAttendanceColor));

  static TextStyle _welcPhotosHeader = TextStyle(
      fontSize: _textSizeScaled20, color: Color(AppColors.welcTakePhotosColor));

  static TextStyle _welcRandomizerHeader = TextStyle(
      fontSize: _textSizeScaled20, color: Color(AppColors.welcRandomizerColor));

  static TextStyle _gettingStBody = TextStyle(
      fontSize: _textSizeScaled15, color: Color(AppColors.welcBodyColor));

  static TextStyle _welcendHeader =
      TextStyle(fontSize: _textSizeScaled20, color: Color(AppColors.welcEnd));

  static TextStyle _loginInfoTextSt = TextStyle(
      fontSize: _textSizeScaled12, color: Color(AppColors.loginInfoText));

  static TextStyle _loginWithEmailSt = TextStyle(
      fontSize: _textSizeScaled12, color: Color(AppColors.loginWithEmailText));

  static TextStyle _loginButtonSt =
      TextStyle(fontSize: _textSizeScaled12, color: Colors.white);

  static TextStyle _loginHintSt =
      TextStyle(color: Color(AppColors.emailHint), fontSize: _textSizeScaled12);

  static TextStyle _loginLabel = TextStyle(color: Color(AppColors.loginButton));

  static TextStyle _loginWelcomeLabel = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled20,
    // fontWeight: FontWeight.bold
  );

  static TextStyle _drawerHeaderStyle = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled16,
  );

  static TextStyle _drawerSubTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled12,
  );

  static TextStyle _drawerListTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled15,
  );

  static TextStyle _textStyleWhite18 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled18,
  );

  static TextStyle _textStyleWhite16 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled16,
  );

  static TextStyle _textStyleWhite15 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled15,
  );

  static TextStyle _textStyleWhite12 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled12,
  );

  static TextStyle _textStyleWhite20 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled20,
  );

  // static TextStyle _textStyleWhite30 = TextStyle(
  //   color: Colors.white,
  //   fontSize: _textSizeScaled30,
  // );

  static TextStyle _textBlackBold12 = TextStyle(
    color: Color(0xff444444),
    fontSize: _textSizeScaled12,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _textWhiteBold20 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _textWhiteMedium20 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _classCancelledFont = TextStyle(
    color: Color(AppColors.classCancelledTextColor),
    fontSize: _textSizeScaled20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _textBlack15 = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _textSizeScaled15,
  );

  static TextStyle _textBlack12 = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _textSizeScaled12,
  );

  static TextStyle _textBlackMedium15 = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _textSizeScaled15,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _textBlackItalic12 = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _textSizeScaled12,
    fontStyle: FontStyle.italic,
  );

  static TextStyle _textWhiteMedium15 = TextStyle(
    color: Colors.white,
    fontSize: _textSizeScaled15,
  );

  static TextStyle _textGrey15 = TextStyle(
    color: Color(AppColors.grey),
    fontSize: _textSizeScaled15,
  );

  static TextStyle _textGreyMedium15 = TextStyle(
    color: Color(AppColors.grey),
    fontSize: _textSizeScaled15,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _textGrey12 = TextStyle(
    color: Color(AppColors.grey),
    fontSize: _textSizeScaled12,
  );

  TextStyle getTextStyle(
      {int fontSize, Color color = Colors.black, String weight}) {
    double _fontSize;
    var _weight;

    switch (weight) {
      case 'bold':
        _weight = FontWeight.bold;
        break;
      case 'normal':
        _weight = FontWeight.normal;
        break;
      case 'medium':
        _weight = FontWeight.w500;
        break;
      default:
        _weight = FontWeight.normal;
    }

    switch (fontSize) {
      case 12:
        _fontSize = _textSizeScaled12;
        break;
      case 15:
        _fontSize = _textSizeScaled15;
        break;
      case 16:
        _fontSize = _textSizeScaled16;
        break;
      case 18:
        _fontSize = _textSizeScaled18;
        break;
      case 20:
        _fontSize = _textSizeScaled20;
        break;
      case 30:
        _fontSize = _textSizeScaled30;
        break;
      case 48:
        _fontSize = _textSizeScaled48;
        break;
      default:
        _fontSize = _textSizeScaled15;
    }

    return TextStyle(
      color: color,
      fontSize: _fontSize,
      fontWeight: _weight,
    );
  }

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
  TextStyle get textStyle18White => _textStyleWhite18;
  TextStyle get textStyle16White => _textStyleWhite16;
  TextStyle get textStyle15White => _textStyleWhite15;
  TextStyle get textStyle12White => _textStyleWhite12;
  TextStyle get textStyle20White => _textStyleWhite20;
  TextStyle get textStyle12BlackBold => _textBlackBold12;
  TextStyle get textStyle20WhiteBold => _textWhiteBold20;
  TextStyle get textStyle20WhiteMedium => _textWhiteMedium20;
  TextStyle get classCancelledTextStyle => _classCancelledFont;
  TextStyle get textStyle15Black => _textBlack15;
  TextStyle get textStyle15WhiteMedium => _textWhiteMedium15;
  TextStyle get textStyle12Black => _textBlack12;
  TextStyle get textStyle15BlackMedium => _textBlackMedium15;
  TextStyle get textStyle12BlackItalic => _textBlackItalic12;
  TextStyle get textStyle15Grey => _textGrey15;
  TextStyle get textStyle15GreyMedium => _textGreyMedium15;
  TextStyle get textStyle12Grey => _textGrey12;
}
