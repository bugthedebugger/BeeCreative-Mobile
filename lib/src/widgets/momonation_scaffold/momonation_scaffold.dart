import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MomonationScaffold extends StatelessWidget {
  final Widget body;

  const MomonationScaffold({Key key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

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
                  'Momonation',
                  style: TextStyle(
                    color: Color(AppColors.meltingCardColor),
                    fontSize: ScreenUtil().setSp(18),
                  ),
                ),
              ],
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.medal,
              color: Color(AppColors.momonationRaw),
              size: ScreenUtil().setSp(15),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.solidBell,
              color: Color(AppColors.momonationRaw),
              size: ScreenUtil().setSp(15),
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Builder(
        builder: (context) => body,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(AppColors.pink),
        child: Icon(
          FontAwesomeIcons.handHoldingHeart,
          size: ScreenUtil().setSp(18),
          color: Colors.white,
        ),
      ),
    );
  }
}
