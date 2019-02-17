import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerListTile extends StatefulWidget {
  String _leadingIcon;
  String _title;
  var _function;

  DrawerListTile({@required icon, @required title, @required function}){
    this._leadingIcon = icon;
    this._title = title;
    this._function = function;
  }

  _DrawerListTileState createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Image.asset(
        widget._leadingIcon, 
        height: ScreenUtil().setHeight(15),
        width: ScreenUtil().setWidth(15),
      ),
      title: Text(
        widget._title,
        style: AppFontStyles().drawerListTextStyle,
      ),
      onTap: widget._function,
    );
  }
}