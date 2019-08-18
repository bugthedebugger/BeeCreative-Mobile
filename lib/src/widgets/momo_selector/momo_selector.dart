import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MomoSelectorWidget extends StatefulWidget {
  final ColorModel colorModel;
  final Function onChange;
  final int min;
  final int max;

  const MomoSelectorWidget({
    Key key,
    @required this.colorModel,
    @required this.onChange,
    @required this.min,
    @required this.max,
  }) : super(key: key);

  @override
  _MomoSelectorWidgetState createState() => _MomoSelectorWidgetState();
}

class _MomoSelectorWidgetState extends State<MomoSelectorWidget> {
  int amount;

  @override
  void initState() {
    super.initState();
    amount = widget.min;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      width: ScreenUtil().setWidth(90),
      height: ScreenUtil().setHeight(35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
        border: Border.all(
          color: widget.colorModel.darker,
          width: ScreenUtil().setWidth(3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              if (amount > widget.min) amount = amount - 1;
              setState(() {});
              widget.onChange(amount);
            },
            radius: ScreenUtil().setWidth(100),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                ScreenUtil().setWidth(15),
              ),
              bottomLeft: Radius.circular(
                ScreenUtil().setWidth(15),
              ),
            ),
            child: Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.white,
              size: ScreenUtil().setSp(15),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(30),
            width: ScreenUtil().setWidth(3),
            color: widget.colorModel.darker,
          ),
          Container(
            width: ScreenUtil().setWidth(15),
            alignment: Alignment.center,
            child: Text(
              '$amount',
              style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(15),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(30),
            width: ScreenUtil().setWidth(3),
            color: widget.colorModel.darker,
          ),
          InkWell(
            onTap: () {
              if (amount < widget.max) amount = amount + 1;
              setState(() {});
              widget.onChange(amount);
            },
            radius: ScreenUtil().setWidth(100),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                ScreenUtil().setWidth(15),
              ),
              bottomRight: Radius.circular(
                ScreenUtil().setWidth(15),
              ),
            ),
            child: Icon(
              FontAwesomeIcons.chevronRight,
              color: Colors.white,
              size: ScreenUtil().setSp(15),
            ),
          ),
        ],
      ),
    );
  }
}
