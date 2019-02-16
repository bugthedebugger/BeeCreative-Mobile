import 'package:BeeCreative/src/assets_repo/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarCircle extends StatelessWidget {

  String avatarImage;

  AvatarCircle(this.avatarImage);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)..init(context);

    return Container(
      width: ScreenUtil().setWidth(80),
      height: ScreenUtil().setWidth(80),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(avatarImage),
      ),
    );
  }
}