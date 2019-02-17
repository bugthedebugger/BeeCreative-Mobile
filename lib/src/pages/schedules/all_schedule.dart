import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchedulesPage extends StatefulWidget {
  _SchedulesPageState createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage> {
  GlobalKey <ScaffoldState> _schedulesScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)..init(context);
    return Scaffold(
      key: _schedulesScaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, 
        leading: IconButton(
          icon: Icon(
            Icons.menu, 
            size: 30, 
            color: Color(AppColors.meltingCardColor),),
          onPressed: (){
            _schedulesScaffoldKey.currentState.openDrawer();
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
      drawer: appDrawer,
      body: ListView(
        
      ),
      backgroundColor: Colors.white,
    );
  }
}