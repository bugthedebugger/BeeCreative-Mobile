import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarCircle extends StatefulWidget {
  String _staticAvatarImage;
  String _avatarImage;

  AvatarCircle(this._staticAvatarImage, this._avatarImage);

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
          width: ScreenUtil().setWidth(80),
          height: ScreenUtil().setWidth(80),
          padding: EdgeInsets.all(2),
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: (widget._avatarImage == null)
                ? AssetImage(widget._staticAvatarImage)
                : NetworkImage(widget._avatarImage),
          ),
        ),
        Positioned(
          top: ScreenUtil().setHeight(40),
          left: -30,
          child: Image.asset(
            AppPhotos.loginScreenCloud2,
            width: ScreenUtil().setWidth(50),
          ),
        ),
      ],
    );
  }
}
