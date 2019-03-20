import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/thumbnail_widget/thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThumbnailGallery extends StatelessWidget {
  final Map<DateTime, List<Gallery>> galleries;

  ThumbnailGallery({
    Key key,
    @required this.galleries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Gallery',
            style: AppFontStyles(context).textStyle15Grey,
          ),
          Container(
            width: ScreenUtil().setWidth(344),
            height: ScreenUtil().setHeight(134),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: galleries.length,
              itemBuilder: (context, index) {
                var keys = galleries.keys.toList();
                return ThumbnailWidget(
                  gallery: galleries[keys[index]][0],
                  count: galleries[keys[index]].length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
