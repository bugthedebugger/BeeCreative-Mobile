import 'package:BeeCreative/src/assets_repo/appcolors.dart';
import 'package:BeeCreative/src/assets_repo/appphotos.dart';
import 'package:BeeCreative/src/pages/beecreative_login/login_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 360, height: 640, allowFontScaling: true)..init(context);
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        overflow: Overflow.clip,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(AppColors.loginBackground),
          ),
          Positioned(
            top: ScreenUtil().setHeight(46),
            left: ScreenUtil().setWidth(24),
            child: Container(
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenCloud3),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(89),
            left: ScreenUtil().setWidth(159),
            child: Container(
              width: ScreenUtil().setWidth(42),
              height: ScreenUtil().setHeight(21),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenCloud1),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(30),
            right: ScreenUtil().setWidth(23),
            child: Container(
              width: ScreenUtil().setWidth(74),
              height: ScreenUtil().setHeight(38),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenCloud2),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(76),
            right: ScreenUtil().setWidth(42),
            child: Container(
              width: ScreenUtil().setWidth(17),
              height: ScreenUtil().setHeight(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenBird1),
                  fit: BoxFit.contain
                )
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(92),
            right: ScreenUtil().setWidth(82),
            child: Container(
              width: ScreenUtil().setWidth(28),
              height: ScreenUtil().setHeight(19),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenBird1),
                  fit: BoxFit.contain
                )
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(98),
            right: ScreenUtil().setWidth(58),
            child: Container(
              width: ScreenUtil().setWidth(17),
              height: ScreenUtil().setHeight(12),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenBird1),
                  fit: BoxFit.contain
                )
              ),
            )
          ),
          Positioned(
            top: ScreenUtil().setHeight(282),
            // top: screenHeight - screenHeight * scaling,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(23),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenGrass1),
                  repeat: ImageRepeat.repeatX,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,

                )
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(303),
            child: Container(
              width: screenWidth,
              height: screenHeight,
              color: Color(AppColors.loginGrass),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(147),
            child: Center(
              child: Container(
                width: ScreenUtil().setWidth(268),
                height: ScreenUtil().setHeight(171),
                decoration: BoxDecoration(
                  image: DecorationImage( 
                    image: ExactAssetImage(AppPhotos.loginScreenKarkhanaBuilding),
                    fit: BoxFit.contain
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(320),
            child: Center(
              child: LoginCard(),
            ),
          ),
        ],
      ),
    );
  }
}