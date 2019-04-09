import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/narrative_uploader_widget.dart/narrative_uploader_widget.dart';
import 'package:BeeCreative/src/widgets/thumbnail_widget/thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ImagePicker extends StatefulWidget {
  final Map<DateTime, List<Gallery>> groupedGallery;

  const ImagePicker({Key key, @required this.groupedGallery}) : super(key: key);

  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  int groupCount;
  List<DateTime> keys;
  bool enabled = false;
  List<Gallery> selectedGallery = List<Gallery>();

  @override
  void initState() {
    groupCount = widget.groupedGallery.length;
    keys = widget.groupedGallery.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Stack(
      children: [
        ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: groupCount,
          itemBuilder: (context, index) {
            DateTime rawDate = keys[index];
            List<Gallery> galleryData = widget.groupedGallery[rawDate];
            String formattedDate =
                DateFormat.yMMMd().format(rawDate).toString();
            return GestureDetector(
              onLongPress: () {
                enabled = !enabled;
                setState(() {});
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                      child: Text(
                        formattedDate,
                        style: AppFontStyles(context).textStyle15Grey,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: galleryData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (enabled) {
                                if (selectedGallery
                                        .indexOf(galleryData[index]) ==
                                    -1) {
                                  selectedGallery.add(galleryData[index]);
                                } else {
                                  selectedGallery.removeWhere((test) {
                                    return test.id == galleryData[index].id;
                                  });
                                }
                                setState(() {});
                              }
                            },
                            child: ThumbnailWidget(
                              gallery: galleryData[index],
                              thumbnailInfo: false,
                              enabled: enabled,
                              selected:
                                  selectedGallery.indexOf(galleryData[index]) !=
                                          -1
                                      ? true
                                      : false,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        enabled
            ? Positioned(
                bottom: ScreenUtil().setHeight(14),
                right: ScreenUtil().setWidth(8),
                child: RaisedButton(
                  onPressed: () {
                    if (selectedGallery.length > 0) {
                      showDialog(
                        barrierDismissible: false,
                        builder: (context) => NarrativeUploaderWidget(
                              galleries: selectedGallery,
                            ),
                        context: context,
                      );
                    } else {
                      enabled = false;
                      setState(() {});
                    }
                  },
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(10),
                    horizontal: ScreenUtil().setWidth(25),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.upload,
                        color: Colors.white,
                        size: ScreenUtil().setSp(15),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(6),
                      ),
                      Text(
                        selectedGallery.length > 0
                            ? "Upload (${selectedGallery.length})"
                            : "Cancel",
                        style: AppFontStyles(context).textStyle15White,
                      )
                    ],
                  ),
                  color: Color(AppColors.studentPresent),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      ScreenUtil().setWidth(30),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
