import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerListTile extends StatefulWidget {
  var _leadingIcon;
  String _title;
  var _function;
  var _image;

  DrawerListTile({icon, @required title, @required function, image}) {
    this._leadingIcon = icon;
    this._title = title;
    this._function = function;
    this._image = image;
  }

  _DrawerListTileState createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: (widget._image != null)
          ? Image.asset(
              widget._image,
              height: ScreenUtil().setHeight(15),
              width: ScreenUtil().setWidth(15),
            )
          : Icon(
              widget._leadingIcon,
              color: Colors.white,
              size: ScreenUtil().setWidth(16),
            ),
      title: Text(
        widget._title,
        style: AppFontStyles(context).drawerListTextStyle,
      ),
      onTap: widget._function,
    );
  }
}
