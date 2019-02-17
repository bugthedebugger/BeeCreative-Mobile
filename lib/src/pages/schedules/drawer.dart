import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/drawer_list_tile.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appDrawer = Drawer(
  child: Container(
    padding: EdgeInsets.only(top: 20),
    color: Color(AppColors.drawerColor),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      AvatarCircle(AppPhotos.staticAvatar),
                      SizedBox(height: 10),
                      Text(
                        "User Name",
                        style: AppFontStyles().drawerHeaderStyle,
                      ),
                      Text(
                        "View Profile",
                        style: AppFontStyles().drawerSubTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
        Expanded(
          child: ListView(children: <Widget>[
            DrawerListTile(
              icon: AppPhotos.drawerSchedule,
              title: "SCHEDULES",
              function: () {},
            ),
            DrawerListTile(
              icon: AppPhotos.drawerClasses,
              title: "CLASSES",
              function: () {},
            ),
            DrawerListTile(
              icon: AppPhotos.drawerContents,
              title: "CONTENTS",
              function: () {},
            ),
            DrawerListTile(
              icon: AppPhotos.drawerQuotes,
              title: "QUOTES",
              function: () {},
            ),
            DrawerListTile(
              icon: AppPhotos.drawerSettings,
              title: "SETTINGS",
              function: () {},
            ),
            DrawerListTile(
              icon: AppPhotos.drawerHelp,
              title: "HELP",
              function: () {},
            ),
            DrawerListTile(
              icon: AppPhotos.drawerAbout,
              title: "ABOUT",
              function: () {},
            ),
            Container(
              height: ScreenUtil().setHeight(400),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: ScreenUtil().setHeight(10),
                    right: ScreenUtil().setWidth(82),
                    child: Image.asset(
                      AppPhotos.loginScreenCloud2,
                      height: ScreenUtil().setHeight(26),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(100),
                    right: ScreenUtil().setWidth(58),
                    child: Image.asset(
                      AppPhotos.loginScreenCloud1,
                      height: ScreenUtil().setHeight(28),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(44),
                    left: ScreenUtil().setWidth(38),
                    child: Image.asset(
                      AppPhotos.loginScreenCloud3,
                      height: ScreenUtil().setHeight(34),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(164),
                    left: ScreenUtil().setWidth(35),
                    child: Image.asset(
                      AppPhotos.loginScreenCloud2,
                      height: ScreenUtil().setHeight(22),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(145),
                    right: ScreenUtil().setWidth(92),
                    child: Image.asset(
                      AppPhotos.loginScreenBird1,
                      height: ScreenUtil().setHeight(9),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(165),
                    right: ScreenUtil().setWidth(122),
                    child: Image.asset(
                      AppPhotos.loginScreenBird1,
                      height: ScreenUtil().setHeight(18),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(163),
                    right: ScreenUtil().setWidth(100),
                    child: Image.asset(
                      AppPhotos.loginScreenBird1,
                      height: ScreenUtil().setHeight(12),
                    ),
                  ),
                  Positioned(
                    bottom: ScreenUtil().setHeight(25),
                    left: 0,
                    child: Image.asset(
                      AppPhotos.loginScreenGrass1,
                      // alignment: Alignment.centerLeft,
                      repeat: ImageRepeat.repeatX,
                      height: ScreenUtil().setHeight(10),
                      width: ScreenUtil().setWidth(340),
                    ),
                  ),
                  Positioned(
                    bottom: ScreenUtil().setHeight(0),
                    left: 0,
                    child: Container(
                      color: Color(AppColors.loginGrass),
                      height: ScreenUtil().setHeight(26),
                      width: ScreenUtil().setWidth(340),
                    ),
                  ),
                  Positioned(
                    bottom: ScreenUtil().setHeight(15),
                    left: ScreenUtil().setWidth(24),
                    child: Image.asset(
                      AppPhotos.loginScreenKarkhanaBuilding,
                      width: ScreenUtil().setWidth(199),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ],
    ),
  ),
);
