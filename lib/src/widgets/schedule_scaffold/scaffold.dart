import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Scaffold scaffoldBuilder({
  Widget body,
  GlobalKey<ScaffoldState> key,
  String title = "",
  String grade = "",
  Widget bottomNavigationBar,
}) {
  return Scaffold(
    key: key,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: Builder(
        builder: (context) {
          ScreenUtil.instance = ScreenUtil(
            width: ScreenSize.screenWidth,
            height: ScreenSize.screenHeight,
            allowFontScaling: true,
          )..init(context);
          return IconButton(
            icon: Icon(
              Icons.menu,
              size: ScreenUtil().setWidth(25),
              color: Color(AppColors.meltingCardColor),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: "Drawer Menu",
          );
        },
      ),
      title: Builder(
        builder: (context) {
          ScreenUtil.instance = ScreenUtil(
            width: ScreenSize.screenWidth,
            height: ScreenSize.screenHeight,
            allowFontScaling: true,
          )..init(context);
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                grade + ' ',
                style: TextStyle(
                  color: Color(AppColors.meltingCardColor),
                  fontSize: ScreenUtil().setSp(18),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Color(AppColors.meltingCardColor),
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(18),
                ),
              ),
            ],
          );
        },
      ),
    ),
    drawer: AppDrawer(),
    body: Builder(
      builder: (context) => body,
    ),
    backgroundColor: Colors.white,
    bottomNavigationBar: bottomNavigationBar,
  );
}
