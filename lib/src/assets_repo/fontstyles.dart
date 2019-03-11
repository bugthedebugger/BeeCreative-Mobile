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
  static int _18TextSize = 18;
  static int _16TextSize = 16;
  static int _15TextSize = 15;
  static int _12TextSize = 12;
  static int _20TextSize = 20;
  static int _30TextSize = 30;
  static double _18TextSizeScaled;
  static double _16TextSizeScaled;
  static double _15TextSizeScaled;
  static double _12TextSizeScaled;
  static double _20TextSizeScaled;
  static double _30TextSizeScaled;
  var context;

  AppFontStyles(this.context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    _12TextSizeScaled = ScreenUtil().setSp(_12TextSize);
    _15TextSizeScaled = ScreenUtil().setSp(_15TextSize);
    _16TextSizeScaled = ScreenUtil().setSp(_16TextSize);
    _18TextSizeScaled = ScreenUtil().setSp(_18TextSize);
    _20TextSizeScaled = ScreenUtil().setSp(_20TextSize);
    _30TextSizeScaled = ScreenUtil().setSp(_30TextSize);
  }

  static TextStyle _welcAttendanceHeader = TextStyle(
      fontSize: _20TextSizeScaled, color: Color(AppColors.welcAttendanceColor));

  static TextStyle _welcPhotosHeader = TextStyle(
      fontSize: _20TextSizeScaled, color: Color(AppColors.welcTakePhotosColor));

  static TextStyle _welcRandomizerHeader = TextStyle(
      fontSize: _20TextSizeScaled, color: Color(AppColors.welcRandomizerColor));

  static TextStyle _gettingStBody = TextStyle(
      fontSize: _15TextSizeScaled, color: Color(AppColors.welcBodyColor));

  static TextStyle _welcEnd =
      TextStyle(fontSize: _20TextSizeScaled, color: Color(AppColors.welcEnd));

  static TextStyle _welcendHeader =
      TextStyle(fontSize: _20TextSizeScaled, color: Color(AppColors.welcEnd));

  static TextStyle _loginInfoTextSt = TextStyle(
      fontSize: _12TextSizeScaled, color: Color(AppColors.loginInfoText));

  static TextStyle _loginWithEmailSt = TextStyle(
      fontSize: _12TextSizeScaled, color: Color(AppColors.loginWithEmailText));

  static TextStyle _loginButtonSt =
      TextStyle(fontSize: _12TextSizeScaled, color: Colors.white);

  static TextStyle _loginHintSt =
      TextStyle(color: Color(AppColors.emailHint), fontSize: _12TextSizeScaled);

  static TextStyle _loginLabel = TextStyle(color: Color(AppColors.loginButton));

  static TextStyle _loginWelcomeLabel = TextStyle(
    color: Colors.white,
    fontSize: _20TextSizeScaled,
    // fontWeight: FontWeight.bold
  );

  static TextStyle _drawerHeaderStyle = TextStyle(
    color: Colors.white,
    fontSize: _16TextSizeScaled,
  );

  static TextStyle _drawerSubTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _12TextSizeScaled,
  );

  static TextStyle _drawerListTextStyle = TextStyle(
    color: Colors.white,
    fontSize: _15TextSizeScaled,
  );

  static TextStyle _18TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _18TextSizeScaled,
  );

  static TextStyle _16TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _16TextSizeScaled,
  );

  static TextStyle _15TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _15TextSizeScaled,
  );

  static TextStyle _12TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _12TextSizeScaled,
  );

  static TextStyle _20TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _20TextSizeScaled,
  );

  static TextStyle _30TextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: _30TextSizeScaled,
  );

  static TextStyle _12TextBlackBold = TextStyle(
    color: Color(0xff444444),
    fontSize: _12TextSizeScaled,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _20TextWhiteBold = TextStyle(
    color: Colors.white,
    fontSize: _20TextSizeScaled,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _20TextWhiteMedium = TextStyle(
    color: Colors.white,
    fontSize: _20TextSizeScaled,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _classCancelledFont = TextStyle(
    color: Color(AppColors.classCancelledTextColor),
    fontSize: _20TextSizeScaled,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _15TextBlack = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _15TextSizeScaled,
  );

  static TextStyle _12TextBlack = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _12TextSizeScaled,
  );

  static TextStyle _15TextBlackMedium = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _15TextSizeScaled,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _12TextBlackItalic = TextStyle(
    color: Color(AppColors.partialBlack),
    fontSize: _12TextSizeScaled,
    fontStyle: FontStyle.italic,
  );

  static TextStyle _15TextWhiteMedium = TextStyle(
    color: Colors.white,
    fontSize: _15TextSizeScaled,
  );

  static TextStyle _15TextGrey = TextStyle(
    color: Color(AppColors.grey),
    fontSize: _15TextSizeScaled,
  );

  static TextStyle _15TextGreyMedium = TextStyle(
    color: Color(AppColors.grey),
    fontSize: _15TextSizeScaled,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _12TextGrey = TextStyle(
    color: Color(AppColors.grey),
    fontSize: _12TextSizeScaled,
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
        _fontSize = _12TextSizeScaled;
        break;
      case 15:
        _fontSize = _15TextSizeScaled;
        break;
      case 16:
        _fontSize = _16TextSizeScaled;
        break;
      case 18:
        _fontSize = _18TextSizeScaled;
        break;
      case 20:
        _fontSize = _20TextSizeScaled;
        break;
      case 30:
        _fontSize = _30TextSizeScaled;
        break;
      default:
        _fontSize = _15TextSizeScaled;
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
  TextStyle get textStyle18White => _18TextStyleWhite;
  TextStyle get textStyle16White => _16TextStyleWhite;
  TextStyle get textStyle15White => _15TextStyleWhite;
  TextStyle get textStyle12White => _12TextStyleWhite;
  TextStyle get textStyle20White => _20TextStyleWhite;
  TextStyle get textStyle12BlackBold => _12TextBlackBold;
  TextStyle get textStyle20WhiteBold => _20TextWhiteBold;
  TextStyle get textStyle20WhiteMedium => _20TextWhiteMedium;
  TextStyle get classCancelledTextStyle => _classCancelledFont;
  TextStyle get textStyle15Black => _15TextBlack;
  TextStyle get textStyle15WhiteMedium => _15TextWhiteMedium;
  TextStyle get textStyle12Black => _12TextBlack;
  TextStyle get textStyle15BlackMedium => _15TextBlackMedium;
  TextStyle get textStyle12BlackItalic => _12TextBlackItalic;
  TextStyle get textStyle15Grey => _15TextGrey;
  TextStyle get textStyle15GreyMedium => _15TextGreyMedium;
  TextStyle get textStyle12Grey => _12TextGrey;
}
