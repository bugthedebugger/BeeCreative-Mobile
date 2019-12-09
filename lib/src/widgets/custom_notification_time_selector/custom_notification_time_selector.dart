import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';

class CustomNotificationTimeSelector extends StatelessWidget {
  final bool enabled;
  final Function onChanged;
  final String customTime;

  const CustomNotificationTimeSelector({
    Key key,
    this.enabled = false,
    this.onChanged,
    this.customTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Set Custom Time',
            style: AppFontStyles(context).getTextStyle(
              color: enabled ? Colors.black : Color(AppColors.grey),
              fontSize: 15,
              weight: 'medium',
            ),
          ),
          GestureDetector(
            onTap: onChanged,
            child: Text(
              customTime == null ? '02:00:00' : '$customTime',
              style: AppFontStyles(context).getTextStyle(
                color: enabled
                    ? Color(AppColors.meltingCardColor)
                    : Color(AppColors.grey),
                fontSize: 15,
                weight: 'medium',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
