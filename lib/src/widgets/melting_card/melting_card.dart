import 'package:BeeCreative/src/widgets/melting_card/card_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeltingCard extends StatefulWidget {
  Widget _child;
  int _height;
  var _color;

  // MeltingCard({this.child, int this.height, this.color});

  MeltingCard({var child, @required double height, @required var color}) {
    this._child = child;
    this._height = height.toInt();
    this._color = color;
  }

  _MeltingCardState createState() => _MeltingCardState();
}

class _MeltingCardState extends State<MeltingCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.2,
          child: Container(
            child: ClipPath(
              clipper: CardClipper(context),
              child: Container(
                height: ScreenUtil().setHeight(widget._height + 2),
                width: ScreenUtil.screenWidth,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: ClipPath(
            clipper: CardClipper(context),
            child: Container(
                height: ScreenUtil().setHeight(widget._height),
                width: ScreenUtil.screenWidth,
                decoration: BoxDecoration(
                  color: widget._color,
                ),
                child: widget._child),
          ),
        )
      ],
    );
  }
}
