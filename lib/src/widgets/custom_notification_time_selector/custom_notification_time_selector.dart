import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';

class CustomNotificationTimeSelector extends StatelessWidget {
  final bool enabled;
  final Function onChanged;

  const CustomNotificationTimeSelector({
    Key key,
    this.enabled = false,
    this.onChanged,
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
          Text(
            '16:00',
            style: AppFontStyles(context).getTextStyle(
              color: enabled
                  ? Color(AppColors.meltingCardColor)
                  : Color(AppColors.grey),
              fontSize: 15,
              weight: 'medium',
            ),
          ),
        ],
      ),
    );
  }
}
