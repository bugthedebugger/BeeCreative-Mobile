import 'package:BeeCreative/src/assets_repo/appcolors.dart';
import 'package:BeeCreative/src/assets_repo/appphotos.dart';
import 'package:BeeCreative/src/assets_repo/fontstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailCard extends StatelessWidget {

  final FocusNode _focusNode1;
  final FocusNode _focusNode2;

  EmailCard(this._focusNode1, this._focusNode2);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 360, height: 640, allowFontScaling: true)..init(context);
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: ScreenUtil().setWidth(297),
      height: ScreenUtil().setHeight(297),
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(5),
        bottom: ScreenUtil().setHeight(20),
        left: ScreenUtil().setWidth(24),
        right: ScreenUtil().setWidth(24)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            spreadRadius: 6.0,
            offset: Offset(0.0, 3.0)
          )
        ],
        shape: BoxShape.rectangle,
      ),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(51),
              height: ScreenUtil().setHeight(56),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppPhotos.loginScreenLogo)
                )
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(133),
              height: ScreenUtil().setHeight(56),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppPhotos.loginScreenBeecreative)
                )
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(AppColors.loginButton), width:1.0)
                ),
                // hintStyle: AppFontStyles().loginHintStyle,
                // hintText: "beeingCreative@beecreative.asia",
                labelStyle: AppFontStyles().loginHintStyle,
                labelText: "Email"
              ),
              focusNode: _focusNode1,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(AppColors.loginButton), width:1.0)
                ),
                // hintStyle: AppFontStyles().loginHintStyle,
                // hintText: "beeingCreative@beecreative.asia",
                labelStyle: AppFontStyles().loginHintStyle,
                labelText: "Password",
              ),
              obscureText: true,
              focusNode: _focusNode2,
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            RaisedButton(
              onPressed: (){},
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              color: Color(AppColors.loginButton),
              child: Container(
                width: ScreenUtil().setWidth(74),
                height: ScreenUtil().setHeight(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign in",
                      style: AppFontStyles().loginButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}