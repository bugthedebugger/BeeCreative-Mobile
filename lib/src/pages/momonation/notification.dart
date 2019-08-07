import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/momonation_notification_card/momonation_notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NOTIFICATIONS',
              style: TextStyle(
                color: Color(AppColors.grey),
                fontSize: ScreenUtil().setSp(15),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(18)),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                ColorModel colorModel = ColorSelector.getColor(index);
                return MomonationNotificationCard(
                  colorModel: colorModel,
                );
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
