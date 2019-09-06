import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/moodmeter_emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodMeter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      backgroundColor: Color(AppColors.yellow),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Mood meter',
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil().setSp(15),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(21),
            horizontal: ScreenUtil().setWidth(15),
          ),
          width: ScreenUtil().setWidth(335),
          height: ScreenUtil().setHeight(264),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              ScreenUtil().setWidth(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: Offset(0.0, 3.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'How do you feel right now?',
                style: AppFontStyles(context).getTextStyle(
                  color: Color(0xffABABAB),
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
