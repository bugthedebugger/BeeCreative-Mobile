import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_bloc_export.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/widgets/thumbnail_widget/thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class PhotoGallery extends StatefulWidget {
  final int classId;

  const PhotoGallery({Key key, this.classId}) : super(key: key);

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  GalleryBloc galleryBloc = kiwi.Container().resolve<GalleryBloc>();

  @override
  void initState() {
    initGallery();
    super.initState();
  }

  @override
  void dispose() {
    galleryBloc.dispose();
    super.dispose();
  }

  void initGallery() async {
    await galleryBloc.init();
    galleryBloc.getFullGallery(widget.classId);
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
        backgroundColor: Colors.white,
        textTheme: TextTheme(),
      ),
      body: StreamBuilder<List<Gallery>>(
        stream: galleryBloc.galleryStream,
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return GridView.builder(
              addAutomaticKeepAlives: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ThumbnailWidget(
                  gallery: snapshot.data[index],
                  count: -1,
                );
              },
            );
          else
            return Container();
        },
      ),
    );
  }
}
