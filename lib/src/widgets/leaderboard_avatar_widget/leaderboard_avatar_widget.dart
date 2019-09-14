import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LeaderboardAvatarWidget extends StatelessWidget {
  final User user;
  final bool leader;
  const LeaderboardAvatarWidget({
    Key key,
    @required this.user,
    this.leader = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorModel colorModel = Provider.of<ColorModel>(context);

    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height:
              !leader ? ScreenUtil().setHeight(20) : ScreenUtil().setHeight(0),
        ),
        AvatarCircle(
          AppPhotos.staticAvatar,
          user.avatar,
          showCloud: false,
          ringColor: colorModel.darker,
          radius: !leader ? 50 : 80,
          ringWidth: 2,
        ),
        SizedBox(
          height:
              !leader ? ScreenUtil().setHeight(30) : ScreenUtil().setHeight(20),
        ),
        Text(
          user.name.substring(0, user.name.indexOf(' ')),
          style: TextStyle(
            color: colorModel.fontColor,
            fontSize: ScreenUtil().setSp(12),
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '${user.momo}',
          style: TextStyle(
            color: colorModel.fontColor,
            fontSize: ScreenUtil().setSp(15),
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
