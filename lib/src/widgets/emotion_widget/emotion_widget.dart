import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/moodmeter_emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmotionWidget extends StatelessWidget {
  final MoodMeterEmotions selectedEmotion;
  final MoodmeterEmojiModel emoji;
  final Function onTap;

  const EmotionWidget({
    Key key,
    @required this.selectedEmotion,
    @required this.emoji,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);
    IconData icon;
    if (selectedEmotion == emoji.emotion) {
      icon = FontAwesomeIcons.solidCheckCircle;
    } else {
      icon = emoji.icon;
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Tooltip(
        message: emoji.emotion.toString(),
        child: GestureDetector(
          onTap: () => onTap(emoji.emotion),
          child: Icon(
            icon,
            color: Color(
              emoji.color,
            ),
            size: ScreenUtil().setSp(42),
          ),
        ),
      ),
    );
  }
}
