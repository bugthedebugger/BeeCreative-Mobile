import 'dart:io';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ThumbnailWidget extends StatelessWidget {
  final Gallery gallery;
  final int count;

  const ThumbnailWidget({Key key, @required this.gallery, this.count = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
      child: Container(
        width: ScreenUtil().setWidth(152),
        height: ScreenUtil().setHeight(101),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: FileImage(File(gallery.imagePath)),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Opacity(
              opacity: 0.65,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(8),
                  vertical: ScreenUtil().setHeight(3),
                ),
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  color: Colors.black,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      '${DateFormat.yMMMd().format(gallery.deliveryDate)}',
                      style: AppFontStyles(context).textStyle12White,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Icon(
                      FontAwesomeIcons.image,
                      color: Colors.white,
                      size: ScreenUtil().setWidth(12),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(5)),
                    Text(
                      count == -1 ? '' : '$count',
                      style: AppFontStyles(context).textStyle12White,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
