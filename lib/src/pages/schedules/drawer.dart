import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/drawer_list_tile.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appDrawer = Drawer(
  child: Container(
    padding: EdgeInsets.symmetric(vertical: 20),
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
          child: ListView(
            children: <Widget>[ 
                ListTile(
                  dense: true,
                  leading: Image.asset(
                    AppPhotos.drawerSchedule, 
                    height: ScreenUtil().setHeight(15),
                    width: ScreenUtil().setWidth(15),
                  ),
                  title: Text(
                    "SCHEDULES",
                    style: AppFontStyles().drawerListTextStyle,
                  ),
                  onTap: (){

                  },
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset(
                    AppPhotos.drawerClasses, 
                    height: ScreenUtil().setHeight(15),
                    width: ScreenUtil().setWidth(15),
                  ),
                  title: Text(
                    "CLASSES",
                    style: AppFontStyles().drawerListTextStyle,
                  ),
                  onTap: (){

                  },
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset(
                    AppPhotos.drawerContents, 
                    height: ScreenUtil().setHeight(15),
                    width: ScreenUtil().setWidth(15),
                  ),
                  title: Text(
                    "CONTENTS",
                    style: AppFontStyles().drawerListTextStyle,
                  ),
                  onTap: (){

                  },
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset(
                    AppPhotos.drawerQuotes, 
                    height: ScreenUtil().setHeight(15),
                    width: ScreenUtil().setWidth(15),
                  ),
                  title: Text(
                    "QUOTES",
                    style: AppFontStyles().drawerListTextStyle,
                  ),
                  onTap: (){

                  },
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset(
                    AppPhotos.drawerSettings, 
                    height: ScreenUtil().setHeight(15),
                    width: ScreenUtil().setWidth(15),
                  ),
                  title: Text(
                    "SETTINGS",
                    style: AppFontStyles().drawerListTextStyle,
                  ),
                  onTap: (){

                  },
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset(
                    AppPhotos.drawerHelp, 
                    height: ScreenUtil().setHeight(15),
                    width: ScreenUtil().setWidth(15),
                  ),
                  title: Text(
                    "HELP",
                    style: AppFontStyles().drawerListTextStyle,
                  ),
                  onTap: (){

                  },
                ),
                DrawerListTile(
                  icon: AppPhotos.drawerAbout,
                  title: "ABOUT",
                  function: (){},
                ),
              ]
            ),
        ),
        ],
    ),
  ),
);