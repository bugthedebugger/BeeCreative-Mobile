import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/momo_selector/momo_selector.dart';
import 'package:BeeCreative/src/widgets/user_selection_widget/user_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppreciatePage extends StatefulWidget {
  @override
  _AppreciatePageState createState() => _AppreciatePageState();
}

class _AppreciatePageState extends State<AppreciatePage> {
  ColorModel colorModel = ColorSelector.getColor(0);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      backgroundColor: colorModel.light,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: ScreenUtil().setHeight(173),
            right: ScreenUtil().setWidth(28),
            child: ImageIcon(
              AssetImage(AppPhotos.outlineDumpling),
              color: colorModel.dark,
              size: ScreenUtil().setSp(45),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(282),
            left: ScreenUtil().setWidth(37),
            child: Icon(
              FontAwesomeIcons.seedling,
              color: colorModel.dark,
              size: ScreenUtil().setSp(65),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: ImageIcon(
              AssetImage(AppPhotos.bar),
              color: colorModel.darker,
              size: ScreenUtil().setSp(163),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(52),
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: ScreenUtil().setHeight(40)),
                  Text(
                    'Appreciate',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(30),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(21),
                  ),
                  AvatarCircle(
                    AppPhotos.staticAvatar,
                    'https://cdn3.iconfinder.com/data/icons/users-6/100/654853-user-men-2-512.png',
                    showCloud: false,
                    radius: 80,
                    ringWidth: 3,
                    ringColor: colorModel.darker,
                  ),
                  Container(
                    height: ScreenUtil().setHeight(47),
                    width: ScreenUtil().setWidth(4),
                    color: colorModel.darker,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return UserSelectionWidget(
                            colorModel: colorModel,
                          );
                        },
                      ).then((onValue) {});
                    },
                    child: Container(
                      width: ScreenUtil().setWidth(80),
                      height: ScreenUtil().setWidth(80),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(3)),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: colorModel.darker,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: ScreenUtil().setWidth(77),
                        height: ScreenUtil().setWidth(77),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: colorModel.light,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: ScreenUtil().setSp(25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(26),
                  ),
                  MomoSelectorWidget(
                    colorModel: colorModel,
                    max: 3,
                    min: 1,
                    onChange: (value) => print(value),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  Theme(
                    data: ThemeData(
                      primaryColor: colorModel.darker,
                      hintColor: colorModel.fontColor,
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: colorModel.fontColor,
                        fontSize: ScreenUtil().setSp(12),
                      ),
                      cursorColor: colorModel.darker,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(15),
                          ),
                          borderSide: BorderSide(
                            color: colorModel.darker,
                            width: ScreenUtil().setWidth(3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(15),
                          ),
                          borderSide: BorderSide(
                            color: colorModel.darker,
                            width: ScreenUtil().setWidth(3),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(15),
                          ),
                          borderSide: BorderSide(
                            color: colorModel.darker,
                            width: ScreenUtil().setWidth(3),
                          ),
                        ),
                        hintText: 'Title',
                        hintStyle: TextStyle(
                          color: colorModel.fontColor,
                          fontSize: ScreenUtil().setSp(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Theme(
                    data: ThemeData(
                      primaryColor: colorModel.darker,
                      hintColor: colorModel.fontColor,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      style: TextStyle(
                        color: colorModel.fontColor,
                        fontSize: ScreenUtil().setSp(12),
                      ),
                      cursorColor: colorModel.darker,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(15),
                          ),
                          borderSide: BorderSide(
                            color: colorModel.darker,
                            width: ScreenUtil().setWidth(3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(15),
                          ),
                          borderSide: BorderSide(
                            color: colorModel.darker,
                            width: ScreenUtil().setWidth(3),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(15),
                          ),
                          borderSide: BorderSide(
                            color: colorModel.darker,
                            width: ScreenUtil().setWidth(3),
                          ),
                        ),
                        hintText: 'Write a message ...',
                        hintStyle: TextStyle(
                          color: colorModel.fontColor,
                          fontSize: ScreenUtil().setSp(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(18)),
                  Center(
                    child: RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(27),
                        vertical: ScreenUtil().setHeight(8),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          ScreenUtil().setWidth(30),
                        ),
                      ),
                      color: Color(AppColors.pink),
                      child: Text(
                        'Appreciate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        backgroundColor: Color(AppColors.pink),
        child: Icon(
          FontAwesomeIcons.times,
          size: ScreenUtil().setSp(18),
          color: Colors.white,
        ),
      ),
    );
  }
}
