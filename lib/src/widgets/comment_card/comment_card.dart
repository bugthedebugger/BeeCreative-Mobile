import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentCard extends StatelessWidget {
  final ColorModel colorModel;
  final String avatar;
  final String comment;

  const CommentCard({
    Key key,
    @required this.colorModel,
    @required this.avatar,
    @required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Stack(
      alignment: Alignment.center,
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(265),
          margin: EdgeInsets.only(
            top: ScreenUtil().setHeight(20),
          ),
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(12),
            horizontal: ScreenUtil().setWidth(12),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setWidth(15),
            ),
            color: colorModel.darker,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.quoteLeft,
                color: Colors.white,
                size: ScreenUtil().setSp(15),
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              Text(
                comment,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(12),
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: ScreenUtil().setWidth(20),
          top: ScreenUtil().setHeight(10),
          child: AvatarCircle(
            AppPhotos.staticAvatar,
            avatar,
            showCloud: false,
            radius: 24,
            ringColor: colorModel.darker,
            ringWidth: 0,
          ),
        ),
      ],
    );
  }
}
