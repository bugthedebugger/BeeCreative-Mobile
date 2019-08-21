import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/bloc/appreciation_bloc/appreciation_bloc_export.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/data/models/momonation/user_list/user_list.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:BeeCreative/src/widgets/momo_selector/momo_selector.dart';
import 'package:BeeCreative/src/widgets/user_selection_widget/user_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shared_preferences/shared_preferences.dart';

class AppreciatePage extends StatefulWidget {
  @override
  _AppreciatePageState createState() => _AppreciatePageState();
}

class _AppreciatePageState extends State<AppreciatePage> {
  ColorModel colorModel = ColorSelector.getColor(0);
  SharedPreferences _preferences =
      kiwi.Container().resolve<SharedPreferences>();
  AppreciationBloc _bloc = kiwi.Container().resolve<AppreciationBloc>();
  StreamSubscription _eventSub;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  User _selectedUser;
  UserList _userList;
  int momoAmount = 1;
  String title;
  String message;

  @override
  void initState() {
    super.initState();
    _eventSub = _bloc.eventStream.listen(
      (onData) {
        if (onData is GetUsers || onData is AppreciateUser) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(15),
                  ),
                ),
                backgroundColor: Colors.white,
                child: LoadingCard(),
              );
            },
          );
        } else if (onData is GetUsersSuccess) {
          _userList = onData.users;
          Navigator.of(context).pop();
        } else if (onData is AppreciationError) {
          Navigator.of(context).pop();
          scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text(onData.message),
              action: SnackBarAction(
                label: 'Reload',
                onPressed: () {
                  _bloc.getUsers();
                },
              ),
            ),
          );
        } else if (onData is AppreciationSuccess) {
          Navigator.of(context).pop();
          Navigator.of(context).pop(true);
        }
      },
    );
    _bloc.getUsers();
  }

  @override
  void dispose() {
    _bloc?.dispose();
    _eventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      key: scaffoldKey,
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
              child: Form(
                key: formKey,
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
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(21),
                    ),
                    AvatarCircle(
                      AppPhotos.staticAvatar,
                      _preferences.get('avatar'),
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
                              userList: _userList,
                            );
                          },
                        ).then((onValue) {
                          setState(() {
                            _selectedUser = onValue;
                          });
                        });
                      },
                      child: (_selectedUser == null)
                          ? Container(
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
                            )
                          : AvatarCircle(
                              AppPhotos.staticAvatar,
                              _selectedUser.avatar,
                              showCloud: false,
                              radius: 80,
                              ringWidth: 3,
                              ringColor: colorModel.darker,
                            ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(26),
                    ),
                    MomoSelectorWidget(
                      colorModel: colorModel,
                      max: 3,
                      min: 1,
                      onChange: (value) => momoAmount = value,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(20)),
                    Theme(
                      data: ThemeData(
                        primaryColor: colorModel.darker,
                        hintColor: colorModel.fontColor,
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value.length < 6)
                            return 'Title must be minimum 6 characters.';

                          title = value;
                        },
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
                        validator: (value) {
                          if (value.length < 6)
                            return 'Message must be atleast 6 characters.';
                          message = value;
                        },
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
                        onPressed: () {
                          if (_selectedUser == null) {
                            scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Please select a user to appreciate.',
                                ),
                                action: SnackBarAction(
                                  label: 'Ok',
                                  onPressed: () {},
                                ),
                              ),
                            );
                          } else {
                            if (formKey.currentState.validate())
                              _bloc.appreciateUser(
                                user: _selectedUser,
                                amount: momoAmount,
                                title: title,
                                message: message,
                              );
                          }
                        },
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(false);
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
