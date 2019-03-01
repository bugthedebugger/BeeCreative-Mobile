import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/scaffold.dart';
import 'package:BeeCreative/src/widgets/animesh_card/animesh_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnderConstruction extends StatelessWidget {
  UnderConstruction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    return buildScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              showDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) => AnimeshDialog(),
              );
            },
            child: Image.asset(
              AppPhotos.underConstruction,
              width: ScreenUtil().setWidth(143),
              height: ScreenUtil().setHeight(225),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(25),
          ),
          Center(
            child: Text(
              "This page needs more code",
              style: AppFontStyles().textStyle15BlackMedium,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(16),
          ),
          Center(
            child: Text(
              "Please come back later",
              style: AppFontStyles().textStyle12BlackItalic,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(29),
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(39),
              vertical: ScreenUtil().setHeight(10),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Color(AppColors.classCancelledColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Go Back",
              style: AppFontStyles().textStyle15White,
            ),
          ),
        ],
      ),
    );
  }
}
