import 'dart:io';
import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ThumbnailWidget extends StatelessWidget {
  final Gallery gallery;
  final int count;
  final bool thumbnailInfo;
  final bool enabled;
  final bool selected;
  final bool showSynced;

  const ThumbnailWidget({
    Key key,
    @required this.gallery,
    this.count = 1,
    this.thumbnailInfo = true,
    this.enabled = false,
    this.selected = false,
    this.showSynced = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    File image =
        File(gallery.cachePath == null ? gallery.imagePath : gallery.cachePath);

    /*
    if (gallery.cachePath == null) {
      // print(gallery.toMap());
      print(image.lengthInBytes);
      print('${gallery.id} loading from original');
    } else {
      // print(gallery.toMap());
      print(image.lengthInBytes);
      print('${gallery.id} loading from cache');
    }
    */

    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
      child: Container(
        width: ScreenUtil().setWidth(152),
        height: ScreenUtil().setHeight(101),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: FileImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(8)),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            !showSynced
                ? Container()
                : Container(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: ScreenUtil().setWidth(19),
                          height: ScreenUtil().setWidth(19),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(AppColors.studentPresent),
                          ),
                          child: Icon(
                            gallery.syncedToPhotos
                                ? FontAwesomeIcons.check
                                : FontAwesomeIcons.sync,
                            size: ScreenUtil().setWidth(8),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
            Expanded(child: Container()),
            enabled
                ? !selected
                    ? Opacity(
                        opacity: 0.50,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.all(ScreenUtil().setWidth(5)),
                            width: ScreenUtil().setWidth(19),
                            height: ScreenUtil().setWidth(19),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(AppColors.meltingCardColor),
                            ),
                            child: Icon(
                              FontAwesomeIcons.check,
                              size: ScreenUtil().setWidth(8),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : Opacity(
                        opacity: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.all(ScreenUtil().setWidth(5)),
                            width: ScreenUtil().setWidth(19),
                            height: ScreenUtil().setWidth(19),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(AppColors.meltingCardColor),
                            ),
                            child: Icon(
                              FontAwesomeIcons.check,
                              size: ScreenUtil().setWidth(8),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                : Container(),
            thumbnailInfo
                ? Opacity(
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
                : Container(),
          ],
        ),
      ),
    );
  }
}
