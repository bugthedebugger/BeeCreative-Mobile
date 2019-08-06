import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget welcomeEnd(context) {
  ScreenUtil.instance = ScreenUtil(width: ScreenSize.screenWidth)
    ..init(context);

  return Scaffold(
    backgroundColor: Color(AppColors.welcEnd),
    body: SafeArea(
      child: Container(
        margin: EdgeInsets.only(
          top: ScreenUtil().setHeight(35),
          left: ScreenUtil().setWidth(30),
          right: ScreenUtil().setWidth(30),
          bottom: ScreenUtil().setHeight(30),
        ),
        padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(20),
            left: ScreenUtil().setWidth(20),
            right: ScreenUtil().setWidth(20),
            bottom: ScreenUtil().setHeight(15)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: Offset(0.0, 3.0))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          welcomeEndPhotos(AppPhotos.welcPhotos, context),
                          welcomeEndPhotos(AppPhotos.welcRandomizer, context)
                        ],
                      ),
                      welcomeEndPhotos(AppPhotos.welcAttendance, context)
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(90),
                  ),
                  welcomeEndTextList(context)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Color(AppColors.welcEnd),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login/google');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Finish",
                      style: AppFontStyles(context).textStyle16White,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget welcomeEndTextList(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          welcomeEndText(
            AppColors.welcEnd,
            "Take Photos",
            AppFontStyles(context).gettingStartedWelcEndHeadStyle,
            context,
          ),
          welcomeEndText(
            AppColors.welcEnd,
            "Student Randomizer",
            AppFontStyles(context).gettingStartedWelcEndHeadStyle,
            context,
          ),
          welcomeEndText(
            AppColors.welcEnd,
            "Take Attendance",
            AppFontStyles(context).gettingStartedWelcEndHeadStyle,
            context,
          )
        ],
      )
    ],
  );
}

Widget welcomeEndText(appColor, text, fontStyle, context) {
  ScreenUtil.instance = ScreenUtil(
    width: ScreenSize.screenWidth,
    height: ScreenSize.screenHeight,
  )..init(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
        child: Icon(
          Icons.check,
          size: ScreenUtil().setHeight(23),
          color: Color(appColor),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(text,
            style: fontStyle, textAlign: TextAlign.left, textScaleFactor: 1),
      )
    ],
  );
}

Widget welcomeEndPhotos(photo, context) {
  ScreenUtil.instance = ScreenUtil(
    width: ScreenSize.screenWidth,
    height: ScreenSize.screenHeight,
    allowFontScaling: true,
  )..init(context);
  return Container(
    height: ScreenUtil().setHeight(91),
    width: ScreenUtil().setWidth(105),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: ExactAssetImage(photo),
        fit: BoxFit.contain,
      ),
    ),
  );
}
