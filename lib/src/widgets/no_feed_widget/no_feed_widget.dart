import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoFeedWidget extends StatelessWidget {
  final ColorModel colorModel;
  final Function onPressed;

  const NoFeedWidget({Key key, this.colorModel, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      width: ScreenUtil().setWidth(200),
      height: ScreenUtil().setHeight(316),
      margin: EdgeInsets.only(
        left: ScreenUtil().setWidth(12),
        right: ScreenUtil().setWidth(3),
        bottom: ScreenUtil().setHeight(5),
      ),
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
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            bottom: ScreenUtil().setHeight(68),
            left: ScreenUtil().setWidth(25),
            child: Icon(
              FontAwesomeIcons.seedling,
              color: colorModel.dark,
            ),
          ),
          Positioned(
            bottom: ScreenUtil().setHeight(16),
            right: ScreenUtil().setWidth(15),
            child: ImageIcon(
              AssetImage(AppPhotos.outlineDumpling),
              color: colorModel.dark,
              size: ScreenUtil().setSp(31),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: ImageIcon(
              AssetImage(AppPhotos.bar),
              color: colorModel.darker,
              size: ScreenUtil().setSp(97),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.frown,
                color: colorModel.darker,
                size: ScreenUtil().setSp(45),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Text(
                'No appreciations have been made recently.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colorModel.fontColor,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(12)),
              FlatButton(
                onPressed: onPressed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(30),
                  ),
                  side: BorderSide(
                    color: colorModel.fontColor,
                  ),
                ),
                child: Text(
                  'Appreciate Someone',
                  style: TextStyle(
                    color: colorModel.fontColor,
                    fontSize: ScreenUtil().setSp(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
