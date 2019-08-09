import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/leaderboard_bar/leaderboard_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderBoardsPage extends StatefulWidget {
  @override
  _LeaderBoardsPageState createState() => _LeaderBoardsPageState();
}

class _LeaderBoardsPageState extends State<LeaderBoardsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            size: ScreenUtil().setHeight(15),
            color: Color(AppColors.meltingCardColor),
          ),
        ),
        title: Row(
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
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(12),
        ),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            ColorModel colorModel = ColorSelector.getColor(index);
            return ListTile(
              title: Text(
                'Leaderboard - August 2019',
                style: TextStyle(
                  color: Color(AppColors.grey),
                  fontSize: ScreenUtil().setSp(15),
                  fontWeight: FontWeight.w500,
                ),
              ),
              enabled: true,
              subtitle: Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(10),
                  bottom: ScreenUtil().setHeight(10),
                ),
                padding: EdgeInsets.all(
                  ScreenUtil().setWidth(12),
                ),
                height: ScreenUtil().setHeight(256),
                width: ScreenUtil().setWidth(335),
                decoration: BoxDecoration(
                  color: colorModel.light,
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 1,
                      color: Color(AppColors.shadowColor),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    LeaderBoardBar(
                      colorModel: colorModel,
                      highest: 30,
                      amount: 10,
                    ),
                    LeaderBoardBar(
                      colorModel: colorModel,
                      highest: 30,
                      amount: 25,
                    ),
                    LeaderBoardBar(
                      colorModel: colorModel,
                      highest: 30,
                      amount: 30,
                    ),
                    LeaderBoardBar(
                      colorModel: colorModel,
                      highest: 30,
                      amount: 28,
                    ),
                    LeaderBoardBar(
                      colorModel: colorModel,
                      highest: 30,
                      amount: 5,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
