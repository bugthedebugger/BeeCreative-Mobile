import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/melting_card/melting_card.dart';
import 'package:flutter/material.dart';
import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class UserProfile extends StatelessWidget {
  final SharedPreferences _preferences =
      kiwi.Container().resolve<SharedPreferences>();

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
        backgroundColor: Color(AppColors.meltingCardColor),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
            size: ScreenUtil().setWidth(18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MeltingCard(
              color: Color(AppColors.meltingCardColor),
              height: 308,
              child: Column(
                children: <Widget>[
                  AvatarCircle(
                    AppPhotos.staticAvatar,
                    _preferences.get('avatar'),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(13),
                  ),
                  Text(
                    '${_preferences.get("userName")}',
                    style: AppFontStyles(context).textStyle18White,
                  ),
                  Text(
                    '${_preferences.get("email")}',
                    style: AppFontStyles(context).getTextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(8),
                horizontal: ScreenUtil().setWidth(20),
              ),
              child: Text(
                'Statistics',
                style: AppFontStyles(context).getTextStyle(
                  color: Color(AppColors.meltingCardColor),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(8),
                horizontal: ScreenUtil().setWidth(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: ScreenUtil().setWidth(153),
                    height: ScreenUtil().setHeight(90),
                    decoration: BoxDecoration(
                      color: Color(AppColors.profileBlue),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                          color: Color(AppColors.shadowColor),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: ScreenUtil().setHeight(13),
                          left: ScreenUtil().setWidth(12),
                          child: Text(
                            'Hours Taught',
                            style: AppFontStyles(context).textStyle12White,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: ScreenUtil().setWidth(16),
                          child: Image.asset(
                            AppPhotos.hour,
                            height: ScreenUtil().setHeight(45),
                            width: ScreenUtil().setWidth(37),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: ScreenUtil().setWidth(10),
                          child: Text(
                            '15',
                            style: AppFontStyles(context).getTextStyle(
                              color: Colors.white,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(153),
                    height: ScreenUtil().setHeight(90),
                    decoration: BoxDecoration(
                      color: Color(AppColors.profileOrange),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                          color: Color(AppColors.shadowColor),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: ScreenUtil().setHeight(13),
                          left: ScreenUtil().setWidth(12),
                          child: Text(
                            'Students Reached',
                            style: AppFontStyles(context).textStyle12White,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: ScreenUtil().setWidth(16),
                          child: Image.asset(
                            AppPhotos.students,
                            height: ScreenUtil().setHeight(45),
                            width: ScreenUtil().setWidth(37),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: ScreenUtil().setWidth(10),
                          child: Text(
                            '715',
                            style: AppFontStyles(context).getTextStyle(
                              color: Colors.white,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(8),
                horizontal: ScreenUtil().setWidth(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: ScreenUtil().setWidth(153),
                    height: ScreenUtil().setHeight(90),
                    decoration: BoxDecoration(
                      color: Color(AppColors.profileRed),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                          color: Color(AppColors.shadowColor),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: ScreenUtil().setHeight(13),
                          left: ScreenUtil().setWidth(12),
                          child: Text(
                            'Classes Taken',
                            style: AppFontStyles(context).textStyle12White,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: ScreenUtil().setWidth(16),
                          child: Image.asset(
                            AppPhotos.classes,
                            height: ScreenUtil().setHeight(45),
                            width: ScreenUtil().setWidth(37),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: ScreenUtil().setWidth(10),
                          child: Text(
                            '103',
                            style: AppFontStyles(context).getTextStyle(
                              color: Colors.white,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(153),
                    height: ScreenUtil().setHeight(90),
                    decoration: BoxDecoration(
                      color: Color(AppColors.profileYellow),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                          color: Color(AppColors.shadowColor),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: ScreenUtil().setHeight(13),
                          left: ScreenUtil().setWidth(12),
                          child: Text(
                            'Achievements',
                            style: AppFontStyles(context).textStyle12White,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: ScreenUtil().setWidth(16),
                          child: Image.asset(
                            AppPhotos.achievements,
                            height: ScreenUtil().setHeight(45),
                            width: ScreenUtil().setWidth(37),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: ScreenUtil().setWidth(10),
                          child: Text(
                            '2',
                            style: AppFontStyles(context).getTextStyle(
                              color: Colors.white,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
