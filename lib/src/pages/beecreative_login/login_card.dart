import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:BeeCreative/src/pages/beecreative_login/email_login.dart';
import 'package:BeeCreative/src/pages/beecreative_notification_welcome.dart/notification_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

class LoginCard extends StatelessWidget {
  GoogleSignIn _googleSignIn = GoogleSignIn(
      hostedDomain: "karkhana.asia", scopes: ['email', 'profile', 'openid']);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 360, height: 640, allowFontScaling: true)
          ..init(context);
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        width: ScreenUtil().setWidth(297),
        height: ScreenUtil().setHeight(297),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(5),
            bottom: ScreenUtil().setHeight(20),
            left: ScreenUtil().setWidth(24),
            right: ScreenUtil().setWidth(24)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: Offset(0.0, 3.0))
          ],
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(51),
              height: ScreenUtil().setHeight(56),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppPhotos.loginScreenLogo))),
            ),
            Container(
              width: ScreenUtil().setWidth(133),
              height: ScreenUtil().setHeight(56),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppPhotos.loginScreenBeecreative))),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Text(
              "By logging in to BeeCreative Mobile, you agree to these Terms and Conditions and Privacy Policy",
              style: AppFontStyles().loginInfoTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            RaisedButton(
              onPressed: () async {
                var user = await _googleSignIn.signIn();
                showDialog(
                  barrierDismissible: false,
                  child: Dialog(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Please wait...")
                        ],
                      ),
                    ),
                  ),
                  context: context,
                );
                await user.authentication.then(
                  (auth) async {
                    // SharedPreferences prefs = await SharedPreferences.getInstance();
                    // await prefs.setString("idtoken", auth.idToken);
                    var httpResponse = await http
                        .post(ApiURL.login, body: {"token": auth.idToken});

                    Map userData = jsonDecode(httpResponse.body);
                    var _token = "Bearer " + userData['data']['token'];
                    print("Body: $userData");

                    http.get(ApiURL.schedules,
                        headers: {"Authorization": _token}).then((data) {
                      var schedulesData = jsonDecode(data.body);
                      print(schedulesData['attendee']);
                    });
                  },
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationWelcome(),
                  ),
                );
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color(AppColors.loginButton),
              child: Container(
                width: ScreenUtil().setWidth(249),
                height: ScreenUtil().setHeight(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: ScreenUtil().setWidth(19),
                      height: ScreenUtil().setHeight(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  AppPhotos.loginScreenKarkhanaHead))),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Text(
                      "Sign in with Karkhana",
                      style: AppFontStyles().loginButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailLoginScreen()));
              },
              child: Text(
                "Sign in with Email",
                style: AppFontStyles().loginWithEmailStyle,
              ),
            )
          ],
        ));
  }
}
