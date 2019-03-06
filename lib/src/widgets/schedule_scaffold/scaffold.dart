import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';

Scaffold buildScaffold({
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
          return IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Color(AppColors.meltingCardColor),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: "Drawer Menu",
          );
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            grade + ' ',
            style: TextStyle(
              color: Color(AppColors.meltingCardColor),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(AppColors.meltingCardColor),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
    drawer: AppDrawer(),
    body: body,
    backgroundColor: Colors.white,
    bottomNavigationBar: bottomNavigationBar,
  );
}
