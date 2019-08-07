import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MomonationNotificationCard extends StatelessWidget {
  final ColorModel colorModel;

  const MomonationNotificationCard({
    Key key,
    @required this.colorModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Row(
      children: <Widget>[
        SizedBox(
          width: ScreenUtil().setWidth(21),
        ),
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(315),
              margin: EdgeInsets.only(
                bottom: ScreenUtil().setHeight(16),
              ),
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(12),
                bottom: ScreenUtil().setHeight(12),
                left: ScreenUtil().setWidth(32),
                right: ScreenUtil().setHeight(15),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(15),
                ),
                color: colorModel.light,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    color: Color(AppColors.shadowColor),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'MONTHLY REFILL',
                    style: TextStyle(
                      color: colorModel.fontColor,
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(8)),
                  Text(
                    'You have received 10 raw mo:mos',
                    style: TextStyle(
                      color: colorModel.fontColor,
                      fontSize: ScreenUtil().setSp(15),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(8)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.quoteLeft,
                        color: colorModel.fontColor,
                        size: ScreenUtil().setSp(15),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(10)),
                      Container(
                        width: ScreenUtil().setWidth(230),
                        child: Text(
                          'Some message will be shown here ok? loaldkfj adsnweoizn ad werhasd  ',
                          style: TextStyle(
                            color: colorModel.fontColor,
                            fontSize: ScreenUtil().setSp(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: ScreenUtil().setHeight(13),
              left: -ScreenUtil().setWidth(21),
              child: AvatarCircle(
                AppPhotos.staticAvatar,
                'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                showCloud: false,
                radius: 42,
                ringColor: colorModel.light,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
