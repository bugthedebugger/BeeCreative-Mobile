import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/leaderboard/leaderboard.dart';
import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/leaderboard_avatar_widget/leaderboard_avatar_widget.dart';
import 'package:BeeCreative/src/widgets/no_leader_widget/no_leader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LeaderboardWidget extends StatelessWidget {
  const LeaderboardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    ColorModel colorModel = Provider.of<ColorModel>(context);
    Leaderboard _leaderboard = Provider.of<Leaderboard>(context);
    List<User> _userList = _leaderboard.users.asList();

    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(5),
        bottom: ScreenUtil().setHeight(16),
      ),
      width: ScreenUtil().setWidth(335),
      constraints: BoxConstraints(minHeight: ScreenUtil().setHeight(190)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 3),
            spreadRadius: 1,
            color: Color(AppColors.shadowColor),
          ),
        ],
        color: Colors.white,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(335),
              height: ScreenUtil().setHeight(190),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorModel.light,
                borderRadius: _userList.length <= 3
                    ? BorderRadius.circular(
                        ScreenUtil().setWidth(15),
                      )
                    : BorderRadius.only(
                        topLeft: Radius.circular(ScreenUtil().setWidth(15)),
                        topRight: Radius.circular(ScreenUtil().setWidth(15)),
                      ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _buildTop3(_userList, colorModel),
              ),
            ),
            if (_userList.length > 3)
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(17),
                  horizontal: ScreenUtil().setWidth(27),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 3; i < _userList.length; i++) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          AvatarCircle(
                            AppPhotos.staticAvatar,
                            _userList[i].avatar,
                            showCloud: false,
                            ringColor: colorModel.dark,
                            radius: 28,
                            ringWidth: 2,
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(16),
                            height: ScreenUtil().setHeight(35),
                          ),
                          Text(
                            _userList[i].name,
                            style: TextStyle(
                              color: colorModel.fontColor,
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '${_userList[i].momo}',
                            style: TextStyle(
                              color: colorModel.fontColor,
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTop3(List<User> userList, ColorModel colorModel) {
    if (userList.length >= 3) {
      LeaderboardAvatarWidget firstWidget = LeaderboardAvatarWidget(
        user: userList[0],
        leader: true,
      );
      LeaderboardAvatarWidget secondWidget = LeaderboardAvatarWidget(
        user: userList[1],
      );
      LeaderboardAvatarWidget thirdWidget = LeaderboardAvatarWidget(
        user: userList[2],
      );
      return [
        secondWidget,
        firstWidget,
        thirdWidget,
      ];
    } else if (userList.length == 2) {
      LeaderboardAvatarWidget firstWidget = LeaderboardAvatarWidget(
        user: userList[0],
        leader: true,
      );
      LeaderboardAvatarWidget secondWidget = LeaderboardAvatarWidget(
        user: userList[1],
      );
      return [
        secondWidget,
        firstWidget,
      ];
    } else if (userList.length == 1) {
      return [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AvatarCircle(
              AppPhotos.staticAvatar,
              userList[0].avatar,
              showCloud: false,
              ringColor: colorModel.darker,
              radius: 129,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  userList[0].name.substring(
                        0,
                        userList[0].name.indexOf(' '),
                      ),
                  style: TextStyle(
                    color: colorModel.fontColor,
                    fontSize: ScreenUtil().setSp(25),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${userList[0].momo}',
                  style: TextStyle(
                    color: colorModel.fontColor,
                    fontSize: ScreenUtil().setSp(45),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ];
    } else {
      return [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                NoLeaderWidget(
                  diameter: 50,
                ),
                NoLeaderWidget(
                  diameter: 100,
                  center: true,
                ),
                NoLeaderWidget(
                  diameter: 50,
                ),
              ],
            ),
            Text(
              'Whoops, No one has made it so far!',
              style: TextStyle(
                color: colorModel.fontColor,
                fontSize: ScreenUtil().setSp(15),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ];
    }
  }
}
