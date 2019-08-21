import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/data/models/momonation/user_list/user_list.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserSelectionWidget extends StatefulWidget {
  final ColorModel colorModel;
  final UserList userList;

  const UserSelectionWidget({
    Key key,
    @required this.colorModel,
    @required this.userList,
  }) : super(key: key);

  @override
  _UserSelectionWidgetState createState() => _UserSelectionWidgetState();
}

class _UserSelectionWidgetState extends State<UserSelectionWidget> {
  User selectedUser;

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
        child: widget.userList == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
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
                  DropdownButtonFormField<User>(
                    value: selectedUser,
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
                    items: widget.userList.users.map((value) {
                      return DropdownMenuItem<User>(
                        value: value,
                        child: Text(
                          value.name,
                          style: TextStyle(
                            color: widget.colorModel.fontColor,
                            fontSize: ScreenUtil().setSp(12),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedUser = value;
                      });
                    },
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
                      itemCount: widget.userList.users.length <= 10
                          ? widget.userList.users.length
                          : 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pop<User>(widget.userList.users[index]);
                          },
                          child: AvatarCircle(
                            AppPhotos.staticAvatar,
                            widget.userList.users[index].avatar,
                            showCloud: false,
                            radius: 32,
                            ringColor: widget.colorModel.darker,
                            ringWidth: 0,
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop<User>(selectedUser);
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: widget.colorModel.darker,
                        fontSize: ScreenUtil().setSp(12),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
