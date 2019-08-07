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
        mainAxisSize: MainAxisSize.min,
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
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: colorModel.light,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().setWidth(15),
                            ),
                          ),
                          child: Container(
                            height: ScreenUtil().setHeight(530),
                            width: ScreenUtil().setWidth(336),
                            child: SingleChildScrollView(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: ScreenUtil().setHeight(103),
                                    left: ScreenUtil().setWidth(42),
                                    child: Icon(
                                      FontAwesomeIcons.seedling,
                                      color: colorModel.dark,
                                      size: ScreenUtil().setSp(65),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    child: ImageIcon(
                                      AssetImage(AppPhotos.bar),
                                      color: colorModel.darker,
                                      size: ScreenUtil().setSp(162),
                                    ),
                                  ),
                                  Positioned(
                                    right: ScreenUtil().setWidth(28),
                                    bottom: ScreenUtil().setHeight(60),
                                    child: ImageIcon(
                                      AssetImage(AppPhotos.outlineDumpling),
                                      color: colorModel.dark,
                                      size: ScreenUtil().setSp(64),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(12),
                                      right: ScreenUtil().setWidth(12),
                                      bottom: ScreenUtil().setHeight(12),
                                      top: ScreenUtil().setHeight(12),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.heart,
                                              color: Colors.white,
                                              size: ScreenUtil().setSp(18),
                                            ),
                                            SizedBox(
                                              width: ScreenUtil().setWidth(5),
                                            ),
                                            Text(
                                              '3',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    ScreenUtil().setSp(15),
                                              ),
                                            ),
                                            Expanded(child: SizedBox()),
                                            IconButton(
                                              alignment: Alignment.centerRight,
                                              icon: Icon(
                                                FontAwesomeIcons.times,
                                                size: ScreenUtil().setSp(18),
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: ScreenUtil().setHeight(29),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            AvatarCircle(
                                              AppPhotos.staticAvatar,
                                              'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                                              showCloud: false,
                                              radius: 80,
                                              ringColor: colorModel.darker,
                                            ),
                                            Container(
                                              width: ScreenUtil().setWidth(40),
                                              height: ScreenUtil().setHeight(5),
                                              color: colorModel.darker,
                                            ),
                                            Container(
                                              width: ScreenUtil().setWidth(36),
                                              height:
                                                  ScreenUtil().setHeight(36),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: colorModel.darker,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Text(
                                                '2',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      ScreenUtil().setSp(20),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: ScreenUtil().setWidth(40),
                                              height: ScreenUtil().setHeight(5),
                                              color: colorModel.darker,
                                            ),
                                            AvatarCircle(
                                              AppPhotos.staticAvatar,
                                              'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                                              showCloud: false,
                                              radius: 80,
                                              ringColor: colorModel.darker,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: ScreenUtil().setHeight(20),
                                        ),
                                        Container(
                                          height: ScreenUtil().setHeight(290),
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 2,
                                            physics: BouncingScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              return Stack(
                                                alignment: Alignment.center,
                                                overflow: Overflow.visible,
                                                children: <Widget>[
                                                  Container(
                                                    width: ScreenUtil()
                                                        .setWidth(265),
                                                    margin: EdgeInsets.only(
                                                      top: ScreenUtil()
                                                          .setHeight(20),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      vertical: ScreenUtil()
                                                          .setHeight(12),
                                                      horizontal: ScreenUtil()
                                                          .setWidth(12),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        ScreenUtil()
                                                            .setWidth(15),
                                                      ),
                                                      color: colorModel.darker,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .quoteLeft,
                                                          color: Colors.white,
                                                          size: ScreenUtil()
                                                              .setSp(15),
                                                        ),
                                                        SizedBox(
                                                            height: ScreenUtil()
                                                                .setHeight(5)),
                                                        Text(
                                                          'Wow... You keep earning them momos and soon we are gonna party',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(12),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: ScreenUtil()
                                                        .setWidth(20),
                                                    top: -ScreenUtil()
                                                        .setHeight(-5),
                                                    child: AvatarCircle(
                                                      AppPhotos.staticAvatar,
                                                      'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                                                      showCloud: false,
                                                      radius: 24,
                                                      ringColor:
                                                          colorModel.darker,
                                                      ringWidth: 0,
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                        Container(
                                          width: ScreenUtil().setWidth(287),
                                          height: ScreenUtil().setHeight(32),
                                          margin: EdgeInsets.only(
                                            top: ScreenUtil().setHeight(15),
                                          ),
                                          child: Theme(
                                            data: ThemeData(
                                              primaryColor: colorModel.darker,
                                              hintColor: colorModel.dark,
                                            ),
                                            child: TextFormField(
                                              textAlign: TextAlign.start,
                                              cursorColor: colorModel.darker,
                                              decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                  icon: Icon(
                                                    FontAwesomeIcons.paperPlane,
                                                    color: colorModel.darker,
                                                    size:
                                                        ScreenUtil().setSp(15),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                                contentPadding: EdgeInsets.only(
                                                  top: ScreenUtil()
                                                      .setHeight(20),
                                                  left:
                                                      ScreenUtil().setWidth(10),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    ScreenUtil().setWidth(30),
                                                  ),
                                                ),
                                                fillColor: Colors.white,
                                                focusColor: Colors.white,
                                                filled: true,
                                                hintText: 'Write a comment ...',
                                                hintStyle: TextStyle(
                                                  fontSize:
                                                      ScreenUtil().setSp(12),
                                                  color: Color(AppColors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
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
                        ringWidth: 2,
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
