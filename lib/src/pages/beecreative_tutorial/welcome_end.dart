import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget welcomeEnd(context) {
  ScreenUtil.instance = ScreenUtil(width: ScreenSize.screenWidth)
    ..init(context);

  return new Scaffold(
    backgroundColor: Color(AppColors.welcEnd),
    body: new Container(
      margin: EdgeInsets.only(top: 35, left: 30, right: 30, bottom: 30),
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: new Offset(0.0, 3.0))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      welcomeEndPhotos(AppPhotos.welcPhotos),
                      welcomeEndPhotos(AppPhotos.welcRandomizer)
                    ],
                  ),
                  welcomeEndPhotos(AppPhotos.welcAttendance)
                ]),
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
            ),
            welcomeEndText(
              AppColors.welcEnd,
              "Student Randomizer",
              AppFontStyles(context).gettingStartedWelcEndHeadStyle,
            ),
            welcomeEndText(
              AppColors.welcEnd,
              "Take Attendance",
              AppFontStyles(context).gettingStartedWelcEndHeadStyle,
            )
          ])
    ],
  );
}

Widget welcomeEndText(appColor, text, fontStyle) {
  return new Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(Icons.check, size: 40, color: Color(appColor))),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(text,
            style: fontStyle, textAlign: TextAlign.left, textScaleFactor: 1),
      )
    ],
  );
}

Widget welcomeEndPhotos(photo) {
  return new Container(
    height: 172.55,
    width: 150.61,
    decoration: BoxDecoration(
        image: new DecorationImage(
            image: ExactAssetImage(photo), fit: BoxFit.contain)),
  );
}
