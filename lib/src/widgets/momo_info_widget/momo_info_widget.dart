import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MomoInfoWidget extends StatelessWidget {
  final int amount;
  final bool cooked;

  const MomoInfoWidget({
    Key key,
    @required this.amount,
    this.cooked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
        left: ScreenUtil().setWidth(13),
        right: ScreenUtil().setWidth(13),
        bottom: ScreenUtil().setHeight(5),
      ),
      width: ScreenUtil().setWidth(162),
      height: ScreenUtil().setHeight(89),
      decoration: BoxDecoration(
        color: cooked
            ? Color(AppColors.momonationCooked)
            : Color(AppColors.momonationRaw),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${cooked ? "Cooked" : "Raw"} Mo:Mo',
            style: AppFontStyles(context).textStyle12White,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ImageIcon(
                AssetImage(
                  cooked ? AppPhotos.cookedDumpling : AppPhotos.rawDumpling,
                ),
                color: Colors.white,
                size: ScreenUtil().setSp(28),
              ),
              Text(
                '$amount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(40),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
