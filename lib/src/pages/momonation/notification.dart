import 'package:BeeCreative/src/assets_repo/app_assets.dart';
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
      body: Column(),
      backgroundColor: Colors.white,
    );
  }
}
