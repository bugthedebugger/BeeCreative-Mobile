import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/see_more_thumbnail_widget.dart/see_more_thumbnail.dart';
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
            galleries.length > 0 ? 'Gallery' : '',
            style: AppFontStyles(context).textStyle15Grey,
          ),
          Container(
            width: ScreenUtil().setWidth(344),
            height: ScreenUtil().setHeight(134),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: galleries.length > 0 ? galleries.length + 1 : 0,
              itemBuilder: (context, index) {
                var keys = galleries.keys.toList();
                if (index == galleries.length)
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.PHOTO_GALLERY,
                        arguments: galleries[keys[0]][0].classId,
                      );
                    },
                    child: SeeMoreThumbnail(),
                  );
                else
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
