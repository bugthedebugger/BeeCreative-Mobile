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
          total == 0 ? percentDone = 1 : percentDone = done / total;
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
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(5),
        vertical: ScreenUtil().setHeight(40),
      ),
      width: ScreenUtil().setWidth(334),
      height: ScreenUtil().setHeight(300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Please wait while the photos are being uploaded",
              style: AppFontStyles(context).getTextStyle(
                color: Color(AppColors.meltingCardColor),
                fontSize: 20,
                weight: 'medium',
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              AppPhotos.noSchedules,
              width: ScreenUtil().setWidth(76),
              height: ScreenUtil().setHeight(67),
            ),
            completed
                ? Text(
                    'Uploaded',
                    style: AppFontStyles(context).textStyle15Grey,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: ScreenUtil().setWidth(18),
                        height: ScreenUtil().setHeight(18),
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.red,
                          strokeWidth: ScreenUtil().setSp(2),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(AppColors.grey),
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(5)),
                      Text(
                        "Uploading ($done / $total)",
                        style: AppFontStyles(context).textStyle15Grey,
                      ),
                    ],
                  ),
            completed
                ? RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(30)),
                    ),
                    elevation: 0,
                    onPressed:
                        completed ? () => Navigator.of(context).pop() : null,
                    color: Color(AppColors.studentAbsent),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      completed ? 'Done' : '',
                      style: AppFontStyles(context).textStyle12White,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
