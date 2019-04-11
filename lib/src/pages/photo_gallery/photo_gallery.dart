import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_bloc_export.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/image_picker/image_picker.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class PhotoGallery extends StatefulWidget {
  final int classId;

  const PhotoGallery({Key key, this.classId}) : super(key: key);

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery>
    with AutomaticKeepAliveClientMixin {
  GalleryBloc galleryBloc = kiwi.Container().resolve<GalleryBloc>();
  StreamSubscription sub;

  @override
  void initState() {
    initGallery();
    sub = galleryBloc.galleryEventsStream.listen(
      (onData) {
        if (onData is SyncToGoogleDrive) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: LoadingCardWithProgress(
                  galleryEventStream: galleryBloc.galleryEventsStream,
                ),
              );
            },
          );
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    sub.cancel();
    galleryBloc.dispose();
    super.dispose();
  }

  void initGallery() async {
    await galleryBloc.init();
    galleryBloc.getGroupedByThumbnail(widget.classId);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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
        title: Text(
          'Photo Gallery',
          style: AppFontStyles(context).getTextStyle(
            fontSize: 18,
            color: Color(AppColors.meltingCardColor),
            weight: 'bold',
          ),
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
              child: IconButton(
                onPressed: () {
                  galleryBloc.syncToGoogleDrive(widget.classId);
                },
                icon: Icon(
                  FontAwesomeIcons.upload,
                  color: Color(AppColors.meltingCardColor),
                  size: ScreenUtil().setWidth(14),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        textTheme: TextTheme(),
      ),
      body: StreamBuilder<Map<DateTime, List<Gallery>>>(
        stream: galleryBloc.groupedGalleryStream,
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return BlocProvider(
              bloc: galleryBloc,
              child: ImagePicker(
                groupedGallery: snapshot.data,
              ),
            );
          else
            return Container();
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
