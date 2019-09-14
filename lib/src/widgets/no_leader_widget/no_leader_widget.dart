import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NoLeaderWidget extends StatelessWidget {
  final double diameter;
  final bool center;

  const NoLeaderWidget({
    Key key,
    this.diameter = 80,
    this.center = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorModel colorModel = Provider.of<ColorModel>(context);

    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return Container(
      margin: EdgeInsets.all(
        ScreenUtil().setWidth(5),
      ),
      width: ScreenUtil().setWidth(diameter),
      height: ScreenUtil().setWidth(diameter),
      padding: EdgeInsets.all(ScreenUtil().setWidth(3)),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorModel.darker,
        shape: BoxShape.circle,
      ),
      child: Container(
        width: ScreenUtil().setWidth(diameter - 3),
        height: ScreenUtil().setWidth(diameter - 3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colorModel.light,
          shape: BoxShape.circle,
        ),
        child: Icon(
          FontAwesomeIcons.trophy,
          color: colorModel.fontColor,
          size: center ? ScreenUtil().setSp(35) : ScreenUtil().setSp(25),
        ),
      ),
    );
  }
}
