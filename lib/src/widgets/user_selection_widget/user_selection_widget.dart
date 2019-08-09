import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserSelectionWidget extends StatefulWidget {
  final ColorModel colorModel;

  const UserSelectionWidget({Key key, @required this.colorModel})
      : super(key: key);

  @override
  _UserSelectionWidgetState createState() => _UserSelectionWidgetState();
}

class _UserSelectionWidgetState extends State<UserSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
      ),
      backgroundColor: Colors.white,
      child: Container(
        width: ScreenUtil().setWidth(297),
        height: ScreenUtil().setHeight(248),
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(20),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            ScreenUtil().setWidth(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Select User',
              style: TextStyle(
                color: widget.colorModel.darker,
                fontSize: ScreenUtil().setSp(15),
              ),
            ),
            DropdownButtonFormField(
              value: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(15),
                  ),
                  borderSide: BorderSide(
                    color: widget.colorModel.darker,
                    width: ScreenUtil().setWidth(1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(15),
                  ),
                  borderSide: BorderSide(
                    color: widget.colorModel.darker,
                    width: ScreenUtil().setWidth(1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(15),
                  ),
                  borderSide: BorderSide(
                    color: widget.colorModel.darker,
                    width: ScreenUtil().setWidth(1),
                  ),
                ),
                hintText: 'Search for User ...',
                hintStyle: TextStyle(
                  color: widget.colorModel.fontColor,
                  fontSize: ScreenUtil().setSp(12),
                ),
              ),
              items: <DropdownMenuItem>[],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'QUICK SELECT',
                style: TextStyle(
                  color: Color(AppColors.grey),
                  fontSize: ScreenUtil().setSp(8),
                ),
              ),
            ),
            Container(
              height: ScreenUtil().setHeight(80),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1,
                  crossAxisSpacing: ScreenUtil().setHeight(10),
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return AvatarCircle(
                    AppPhotos.staticAvatar,
                    'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                    showCloud: false,
                    radius: 32,
                    ringColor: widget.colorModel.darker,
                    ringWidth: 0,
                  );
                },
              ),
            ),
            Text(
              'Done',
              style: TextStyle(
                color: widget.colorModel.darker,
                fontSize: ScreenUtil().setSp(12),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
