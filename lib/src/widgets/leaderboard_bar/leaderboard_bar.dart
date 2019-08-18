import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderBoardBar extends StatelessWidget {
  final ColorModel colorModel;
  final int amount;
  final int highest;
  static const double _maxHeight = 178;
  final String avatar;

  const LeaderBoardBar({
    Key key,
    @required this.colorModel,
    @required this.amount,
    @required this.highest,
    @required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    double percentage = (amount / highest);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        AnimatedContainer(
          height: ScreenUtil().setHeight(
            _maxHeight * percentage,
          ),
          width: ScreenUtil().setWidth(45),
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
          decoration: BoxDecoration(
            color: colorModel.darker,
            borderRadius: BorderRadius.circular(
              ScreenUtil().setWidth(15),
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                top: -ScreenUtil().setHeight(14),
                left: ScreenUtil().setWidth(9),
                child: AvatarCircle(
                  AppPhotos.staticAvatar,
                  avatar,
                  showCloud: false,
                  radius: 28,
                  ringWidth: 1.5,
                  ringColor: colorModel.light,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: ScreenUtil().setHeight(10)),
        Text(
          '$amount',
          style: TextStyle(
            color: colorModel.fontColor,
            fontSize: ScreenUtil().setSp(15),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
