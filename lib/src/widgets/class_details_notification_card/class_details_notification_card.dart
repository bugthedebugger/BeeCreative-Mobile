import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassDetailsNotificationCard extends StatelessWidget {
  final Schedule schedule;
  const ClassDetailsNotificationCard({
    Key key,
    @required this.schedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setHeight(8)),
      child: Container(
        padding: EdgeInsets.only(
          bottom: ScreenUtil().setHeight(8),
          left: ScreenUtil().setWidth(8),
          right: ScreenUtil().setWidth(8),
          top: ScreenUtil().setHeight(10),
        ),
        width: ScreenUtil().setWidth(329),
        height: ScreenUtil().setHeight(103),
        decoration: BoxDecoration(
          color: Color(AppColors.meltingCardColor),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 1,
              color: Color(AppColors.shadowColor),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
              size: ScreenUtil().setHeight(66),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Is the class going well?",
                        style: AppFontStyles(context).textStyle15White,
                      ),
                      Text(
                        "Don't forget to take pictures!",
                        style: AppFontStyles(context).textStyle15White,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              'Upload From Gallery',
                              style: AppFontStyles(context).getTextStyle(
                                fontSize: 12,
                                color: Color(AppColors.meltingCardColor),
                              ),
                            ),
                          ),
                          RaisedButton(
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(3),
                              vertical: ScreenUtil().setHeight(3),
                            ),
                            onPressed: () {
                              BlocProvider.of<GalleryBloc>(context)
                                  .takePhoto(schedule);
                            },
                            color: Colors.white,
                            shape: CircleBorder(),
                            child: Icon(
                              FontAwesomeIcons.camera,
                              size: ScreenUtil().setWidth(15),
                              color: Color(AppColors.meltingCardColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
