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

class MoodeMeterEmojis {
  static List<MoodMeterEmotions> emojiList = [
    MoodMeterEmotions.happy,
    MoodMeterEmotions.sad,
    MoodMeterEmotions.tired,
    MoodMeterEmotions.energized,
    MoodMeterEmotions.iamok,
    MoodMeterEmotions.satisfied,
    MoodMeterEmotions.dissatisfied,
  ];

  static Map<MoodMeterEmotions, Map> emojiMap = {
    MoodMeterEmotions.happy: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionHappy,
    },
    MoodMeterEmotions.sad: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionSad,
    },
    MoodMeterEmotions.tired: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionTired,
    },
    MoodMeterEmotions.energized: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionEnergized,
    },
    MoodMeterEmotions.iamok: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionIamok,
    },
    MoodMeterEmotions.satisfied: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionSatisfied,
    },
    MoodMeterEmotions.dissatisfied: {
      'emoji': FontAwesomeIcons.solidSmile,
      'color': AppColors.emotionDissatisfied,
    },
  };
}
