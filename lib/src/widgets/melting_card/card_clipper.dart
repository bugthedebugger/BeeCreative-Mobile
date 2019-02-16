import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardClipper extends CustomClipper<Path>{

  BuildContext _context;
  CardClipper(this._context);

  @override
  Path getClip(Size size) {
    ScreenUtil.instance = ScreenUtil(width: 360, height: 640, allowFontScaling: true)..init(_context);

    final Path _path = Path();
    final _height = size.height - ScreenUtil().setHeight(80);
    final _width = size.width;
    final _radius = ScreenUtil().setHeight(5);
    final int _barWidth = _width ~/ 14;
    final _baseWidth = ScreenUtil().setWidth(_barWidth);

    _path.lineTo(0, _height);

    // BAR 1
    _path.arcToPoint(
      Offset(_baseWidth, _height), 
      radius: Radius.circular(_radius), clockwise: false
    );

    _path.lineTo(_baseWidth, _height - ScreenUtil().setHeight(40));

    // BAR 2
    _path.arcToPoint(
      Offset(_baseWidth * 2,
      _height - ScreenUtil().setHeight(40)), 
      radius: Radius.circular(_radius)
    );

    _path.lineTo(_baseWidth * 2, _height + ScreenUtil().setHeight(60));

    // BAR 3
    _path.arcToPoint(
      Offset(_baseWidth * 3, _height + ScreenUtil().setHeight(60)), 
      radius: Radius.circular(_radius), 
      clockwise: false
    );

    _path.lineTo(_baseWidth * 3, _height - ScreenUtil().setHeight(40));

    // BAR 4
    _path.arcToPoint(
      Offset(_baseWidth * 4, _height - ScreenUtil().setHeight(40)), 
      radius: Radius.circular(_radius)
    );

    _path.lineTo(_baseWidth * 4, _height - ScreenUtil().setHeight(20));

    // BAR 5
    _path.arcToPoint(
      Offset(_baseWidth * 5, _height - ScreenUtil().setHeight(20)), 
      radius: Radius.circular(_radius), 
      clockwise: false
    );
    
    _path.lineTo(_baseWidth * 5, _height - ScreenUtil().setHeight(70));

    // BAR 6
    _path.arcToPoint(
      Offset(_baseWidth * 6, _height - ScreenUtil().setHeight(70)), 
      radius: Radius.circular(_radius)
    );
    
    _path.lineTo(_baseWidth * 6, _height + ScreenUtil().setHeight(5));

    // BAR 7   
    _path.quadraticBezierTo(
      _baseWidth * 6, 
      _height + ScreenUtil().setHeight(20), 
      _baseWidth * 7 - ScreenUtil().setWidth(5), 
      _height + ScreenUtil().setHeight(20)
    );
    
    // BAR 8
    _path.quadraticBezierTo(
      _baseWidth * 7, 
      _height + ScreenUtil().setHeight(20), 
      _baseWidth * 7, 
      _height + ScreenUtil().setHeight(30)
    );
    
    _path.lineTo(_baseWidth * 7, _height + ScreenUtil().setHeight(65));
    
    // BAR 9
    _path.arcToPoint(
      Offset(_baseWidth * 8, _height + ScreenUtil().setHeight(65)), 
      radius: Radius.circular(_radius), 
      clockwise: false
    );

    _path.lineTo(_baseWidth * 8, _height - ScreenUtil().setHeight(5));

    // BAR 10
    _path.arcToPoint(
      Offset(_baseWidth * 9, _height - ScreenUtil().setHeight(5)),
      radius: Radius.circular(_radius)
    );

    _path.lineTo(_baseWidth * 9, _height + ScreenUtil().setHeight(30));
    
    // BAR 11
    _path.arcToPoint(
      Offset(_baseWidth * 10, _height + ScreenUtil().setHeight(30)),
      radius: Radius.circular(_radius),
      clockwise: false
    );

    _path.lineTo(_baseWidth * 10, _height - ScreenUtil().setHeight(35));

    // BAR 12
    _path.arcToPoint(
      Offset(_baseWidth * 11, _height - ScreenUtil().setHeight(35)),
      radius: Radius.circular(_radius),
      clockwise: true
    );

    _path.lineTo(_baseWidth * 11, _height);

    // BAR 13
    _path.arcToPoint(
      Offset(_baseWidth * 12, _height),
      radius: Radius.circular(_radius),
      clockwise: false
    );

    // ENDING PATH
    _path.lineTo(_width, _height);
    _path.lineTo(_width, 0);


    return _path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }

}