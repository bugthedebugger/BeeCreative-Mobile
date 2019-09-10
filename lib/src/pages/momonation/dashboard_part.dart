import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/bloc/momonation_bloc/momonation_bloc_export.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/feed/feed.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/momo_info_widget/momo_info_widget.dart';
import 'package:BeeCreative/src/widgets/momonation_comments_dialog/momonation_comments_dialog.dart';
import 'package:BeeCreative/src/widgets/momonation_feed_card/momonation_feed_card.dart';
import 'package:BeeCreative/src/widgets/no_feed_widget/no_feed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DashboardPart extends StatefulWidget {
  @override
  _DashboardPartState createState() => _DashboardPartState();
}

class _DashboardPartState extends State<DashboardPart> {
  MomonationBloc _bloc;
  FeedLoadSuccess _events;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    _bloc = Provider.of<MomonationBloc>(context);
    _events = Provider.of<MomonationEvents>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MomoInfoWidget(
              amount: _events.feed.bank.raw,
              cooked: false,
            ),
            MomoInfoWidget(
              amount: _events.feed.bank.cooked,
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
            itemCount:
                _events.feed.feed.length == 0 ? 1 : _events.feed.feed.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              ColorModel colorModel = ColorSelector.getColor(index);
              return _events.feed.feed.length == 0
                  ? NoFeedWidget(
                      colorModel: colorModel,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(Routes.APPRECIATE_PAGE)
                            .then((onValue) {
                          if (onValue) _bloc.getFeed();
                        });
                      },
                    )
                  : Provider<Feed>.value(
                      value: _events.feed.feed[index],
                      child: FeedCard(
                        colorModel: colorModel,
                        onTap: () {
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) {
                              return Provider<Feed>.value(
                                value: _events.feed.feed[index],
                                child: MomonationCommentsDialog(
                                  colorModel: colorModel,
                                ),
                              );
                            },
                          ).then((onValue) {
                            if (onValue != null) if (onValue) _bloc.getFeed();
                          });
                        },
                      ),
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(Routes.LEADERBOARDS);
          },
          child: Container(
            height: ScreenUtil().setHeight(50),
            child: ListView.builder(
              itemCount: _events.feed.leaderboard.length,
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
                        _events.feed.leaderboard[index].avatar,
                        showCloud: false,
                        ringColor: Color(AppColors.green),
                        radius: 32,
                        ringWidth: 2,
                      ),
                      Text(
                        '${_events.feed.leaderboard[index].momo}',
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
        ),
      ],
    );
  }
}
