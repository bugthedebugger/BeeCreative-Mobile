import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailCard extends StatefulWidget {
  final FocusNode focusNode1;
  final FocusNode focusNode2;
  final Function onSubmit;

  EmailCard({
    @required this.focusNode1,
    @required this.focusNode2,
    this.onSubmit,
  });

  @override
  _EmailCardState createState() => _EmailCardState();
}

class _EmailCardState extends State<EmailCard> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;

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
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(51),
              height: ScreenUtil().setHeight(45),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppPhotos.loginScreenLogo,
                  ),
                ),
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(133),
              height: ScreenUtil().setHeight(44),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppPhotos.loginScreenBeecreative),
                ),
              ),
            ),
            TextFormField(
              validator: (data) {
                if (data.length < 5) {
                  return 'please enter a valid email address!';
                } else {
                  email = data;
                }
              },
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(AppColors.loginButton),
                    width: 1.0,
                  ),
                ),
                labelStyle: AppFontStyles(context).loginHintStyle,
                labelText: "Email",
              ),
              focusNode: widget.focusNode1,
            ),
            TextFormField(
              validator: (data) {
                if (data.length < 5) {
                  return 'please enter a valid email password!';
                } else {
                  password = data;
                }
              },
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(AppColors.loginButton),
                    width: 1.0,
                  ),
                ),
                labelStyle: AppFontStyles(context).loginHintStyle,
                labelText: "Password",
              ),
              obscureText: true,
              focusNode: widget.focusNode2,
            ),
            RaisedButton(
              onPressed: () {
                bool valid = _formKey.currentState.validate();
                if (valid) {
                  widget.onSubmit(email, password);
                }
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color(AppColors.loginButton),
              child: Container(
                width: ScreenUtil().setWidth(74),
                height: ScreenUtil().setHeight(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign in",
                      style: AppFontStyles(context).loginButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
