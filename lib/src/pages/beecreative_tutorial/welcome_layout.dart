import 'package:flutter/material.dart';
import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeLayout extends StatelessWidget {
  final String imageSrc;
  final String welcHeader;
  final String welcBody;
  final bgColor;
  final TextStyle headerStyle;
  final TextStyle bodyStyle;

  WelcomeLayout(this.imageSrc, this.welcHeader, this.welcBody, this.headerStyle,
      this.bodyStyle, this.bgColor);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      backgroundColor: Color(bgColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(173),
              height: ScreenUtil().setHeight(151),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(imageSrc), fit: BoxFit.contain),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: ScreenUtil().setWidth(262),
              height: ScreenUtil().setHeight(360),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(50),
                bottom: ScreenUtil().setHeight(15),
                left: ScreenUtil().setWidth(20),
                right: ScreenUtil().setWidth(20),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    spreadRadius: 6.0,
                    offset: Offset(0.0, 3.0),
                  )
                ],
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    welcHeader,
                    style: headerStyle,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      welcBody,
                      style: bodyStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
