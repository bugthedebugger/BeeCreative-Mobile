import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarCircle extends StatefulWidget {
  final String _staticAvatarImage;
  final String _avatarImage;
  final bool showCloud;
  final Color ringColor;
  final int radius;

  AvatarCircle(
    this._staticAvatarImage,
    this._avatarImage, {
    this.showCloud = true,
    this.ringColor = Colors.white,
    this.radius = 80,
  });

  @override
  AvatarCircleState createState() {
    return new AvatarCircleState();
  }
}

class AvatarCircleState extends State<AvatarCircle> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
      ..init(context);

    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(widget.radius),
          height: ScreenUtil().setWidth(widget.radius),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: widget.ringColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: (widget._avatarImage == null)
                ? AssetImage(widget._staticAvatarImage)
                : NetworkImage(widget._avatarImage),
          ),
        ),
        if (widget.showCloud)
          Positioned(
            top: ScreenUtil().setHeight(40),
            left: -30,
            child: Image.asset(
              AppPhotos.avatarCloud,
              width: ScreenUtil().setWidth(50),
            ),
          ),
      ],
    );
  }
}
