import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/drawer.dart';
import 'package:flutter/material.dart';

Scaffold buildScaffold({Widget body, GlobalKey<ScaffoldState> key}) {
  return Scaffold(
    key: key,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: 30,
          color: Color(AppColors.meltingCardColor),
        ),
        onPressed: () {
          key.currentState.openDrawer();
        },
        tooltip: "Drawer Menu",
      ),
      title: Text(
        "Schedules",
        style: TextStyle(
          color: Color(AppColors.meltingCardColor),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    drawer: AppDrawer(),
    body: body,
    backgroundColor: Colors.white,
  );
}
