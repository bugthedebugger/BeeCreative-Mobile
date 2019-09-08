import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';

enum MoodMeterEmotions {
  happy,
  sad,
  tired,
  energized,
  iamok,
  satisfied,
  dissatisfied,
}

class MoodMeterEmojis {
  static List<MoodMeterEmotions> emojiList = [
    MoodMeterEmotions.happy,
    MoodMeterEmotions.sad,
    MoodMeterEmotions.tired,
    MoodMeterEmotions.energized,
    MoodMeterEmotions.iamok,
    MoodMeterEmotions.satisfied,
    MoodMeterEmotions.dissatisfied,
  ];

  static Map<MoodMeterEmotions, MoodmeterEmojiModel> emojiMap = {
    MoodMeterEmotions.happy: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidSmile,
      color: AppColors.emotionHappy,
      emotion: MoodMeterEmotions.happy,
    ),
    MoodMeterEmotions.sad: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidFrown,
      color: AppColors.emotionSad,
      emotion: MoodMeterEmotions.sad,
    ),
    MoodMeterEmotions.tired: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidDizzy,
      color: AppColors.emotionTired,
      emotion: MoodMeterEmotions.tired,
    ),
    MoodMeterEmotions.energized: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidGrinStars,
      color: AppColors.emotionEnergized,
      emotion: MoodMeterEmotions.energized,
    ),
    MoodMeterEmotions.iamok: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidMehBlank,
      color: AppColors.emotionIamok,
      emotion: MoodMeterEmotions.iamok,
    ),
    MoodMeterEmotions.satisfied: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidGrinBeam,
      color: AppColors.emotionSatisfied,
      emotion: MoodMeterEmotions.satisfied,
    ),
    MoodMeterEmotions.dissatisfied: MoodmeterEmojiModel(
      icon: FontAwesomeIcons.solidAngry,
      color: AppColors.emotionDissatisfied,
      emotion: MoodMeterEmotions.dissatisfied,
    ),
  };
}

class MoodmeterEmojiModel {
  final int color;
  final IconData icon;
  final MoodMeterEmotions emotion;

  MoodmeterEmojiModel({
    @required this.color,
    @required this.icon,
    @required this.emotion,
  });
}
