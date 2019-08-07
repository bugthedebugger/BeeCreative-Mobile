import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/momo_info_widget/momo_info_widget.dart';
import 'package:BeeCreative/src/widgets/momonation_feed_card/momonation_feed_card.dart';
import 'package:BeeCreative/src/widgets/momonation_scaffold/momonation_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MomonationDashboard extends StatefulWidget {
  @override
  _MomonationDashboardState createState() => _MomonationDashboardState();
}

class _MomonationDashboardState extends State<MomonationDashboard> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return MomonationScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MomoInfoWidget(
                amount: 50,
                cooked: false,
              ),
              MomoInfoWidget(
                amount: 0,
                cooked: true,
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(21),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(12),
            ),
            child: Text(
              'Recent Activity',
              style: AppFontStyles(context).getTextStyle(
                color: Color(AppColors.grey),
                fontSize: 15,
                style: 'Medium',
              ),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(11)),
          Container(
            height: ScreenUtil().setHeight(320),
            child: ListView.builder(
              itemCount: 4,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ColorModel colorModel = ColorSelector.getColor(index);
                return FeedCard(
                  colorModel: colorModel,
                );
              },
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(20)),
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(12),
            ),
            child: Text(
              'Leaderboard',
              style: AppFontStyles(context).getTextStyle(
                color: Color(AppColors.grey),
                fontSize: 15,
                style: 'Medium',
              ),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Container(
            height: ScreenUtil().setHeight(50),
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: ScreenUtil().setWidth(12),
                    right: ScreenUtil().setWidth(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AvatarCircle(
                        AppPhotos.staticAvatar,
                        'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                        showCloud: false,
                        ringColor: Color(AppColors.green),
                        radius: 32,
                      ),
                      Text(
                        '69',
                        style: TextStyle(
                          color: Color(AppColors.grey),
                          fontSize: ScreenUtil().setSp(12),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
