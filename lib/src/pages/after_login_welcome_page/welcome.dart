import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/schedules/all_schedule.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/melting_card/melting_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoggedInWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userName = "Dweeb Dahal";

    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight)..init(context);
    return Scaffold(
      body: MeltingCard(
        color: Color(AppColors.meltingCardColor),
        height: ScreenUtil().setHeight(440),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AvatarCircle(AppPhotos.staticAvatar),
              SizedBox(height: 20,),
              Text(
                "Welcome $userName",
                style: AppFontStyles().loginWelcomeStyle,
              ),
              SizedBox(height: 20,),
              RaisedButton(
                elevation: 0,
                onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => SchedulesPage()
                    )
                  );
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(120),
                  height: ScreenUtil().setHeight(30),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "Go to Schedules",
                      style: TextStyle(
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}