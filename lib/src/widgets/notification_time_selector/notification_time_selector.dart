import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationTimeSelector extends StatelessWidget {
  final bool enabled;
  final Function onChanged;
  final String selectedTime;
  final bool custom;

  const NotificationTimeSelector({
    Key key,
    this.enabled = false,
    @required this.onChanged,
    this.selectedTime,
    this.custom = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    // print('Selected Time inside widget: $selectedTime');
    // print('Custom value inside widget: $custom');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Notification Time',
          style: AppFontStyles(context).getTextStyle(
            color: enabled ? Colors.black : Color(AppColors.grey),
            fontSize: 15,
            weight: 'medium',
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(36),
          padding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: ScreenUtil().setWidth(10),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setWidth(5),
            ),
            border: Border.all(
              color: enabled
                  ? Color(AppColors.meltingCardColor)
                  : Color(AppColors.grey),
            ),
          ),
          child: Theme(
            data: ThemeData(
              canvasColor: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isDense: true,
                value: custom
                    ? 'custom'
                    : selectedTime == null ? '00:05:00' : selectedTime,
                style: TextStyle(
                  color: enabled
                      ? Color(AppColors.meltingCardColor)
                      : Color(AppColors.grey),
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
                hint: Container(
                  width: ScreenUtil().setWidth(100),
                  child: Text('Select time'),
                ),
                iconEnabledColor: Color(AppColors.meltingCardColor),
                onChanged: enabled ? onChanged : null,
                items: [
                  DropdownMenuItem(
                    value: '01:00:00',
                    child: Container(
                      width: ScreenUtil().setWidth(100),
                      child: Text('An hour earlier'),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '00:05:00',
                    child: Container(
                      width: ScreenUtil().setWidth(100),
                      child: Text('5min earlier'),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'custom',
                    child: Container(
                      width: ScreenUtil().setWidth(100),
                      child: Text('Set custom'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
