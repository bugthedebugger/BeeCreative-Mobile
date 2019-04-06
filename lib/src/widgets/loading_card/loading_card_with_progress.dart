import 'dart:async';
import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_bloc_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingCardWithProgress extends StatefulWidget {
  final Stream galleryEventStream;

  const LoadingCardWithProgress({Key key, this.galleryEventStream})
      : super(key: key);

  @override
  _LoadingCardWithProgressState createState() =>
      _LoadingCardWithProgressState();
}

class _LoadingCardWithProgressState extends State<LoadingCardWithProgress> {
  double percentDone = 0;
  int done = 0;
  int total = 0;
  bool completed = false;
  StreamSubscription sub;

  @override
  void initState() {
    sub = widget.galleryEventStream.listen(
      (onData) {
        if (onData is SyncingToGoogleDrive) {
          total = onData.total;
          done = onData.done;
          percentDone = done / total;
          setState(() {});
        } else if (onData is SyncingToGoogleDriveCompleted) {
          completed = true;
          setState(() {});
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      width: ScreenUtil().setWidth(288),
      height: ScreenUtil().setHeight(145),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              AppPhotos.willi,
              width: ScreenUtil().setWidth(76),
              height: ScreenUtil().setHeight(67),
            ),
            Text(
              "$done / $total",
              style: AppFontStyles(context).textStyle12Black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: percentDone,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(AppColors.meltingCardColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: completed ? () => Navigator.of(context).pop() : null,
                child: Text(
                  completed ? 'Done' : '',
                  style: AppFontStyles(context).textStyle12Black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
