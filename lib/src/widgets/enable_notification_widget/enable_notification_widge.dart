import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';

class EnableNotifictionWidget extends StatelessWidget {
  final bool enabled;
  final Function onChanged;

  const EnableNotifictionWidget({
    Key key,
    this.enabled = false,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Allow app to send notification',
          style: AppFontStyles(context).getTextStyle(
            color: Colors.black,
            fontSize: 15,
            weight: 'medium',
          ),
        ),
        Switch(
          onChanged: onChanged,
          value: enabled,
          activeColor: Color(AppColors.meltingCardColor),
        ),
      ],
    );
  }
}
