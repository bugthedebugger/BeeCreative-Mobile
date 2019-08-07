import 'dart:ui';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';

class ColorSelector {
  static ColorModel getColor(int index) {
    index = index % 3;
    ColorModel colorModel;
    switch (index) {
      case 0:
        colorModel = ColorModel(
          light: Color(AppColors.morningScheduleCard),
          dark: Color(AppColors.morningScheduleCardDark),
          darker: Color(AppColors.morningScheduleCardDarker),
          fontColor: Color(AppColors.morningScheduleCardDarker),
        );
        break;
      case 1:
        colorModel = ColorModel(
          light: Color(AppColors.afternoonScheduleCard),
          dark: Color(AppColors.afternoonScheduleCardDark),
          darker: Color(AppColors.afternoonScheduleCardDarker),
          fontColor: Color(AppColors.afternoonScheduleCardDarker),
        );
        break;
      case 2:
        colorModel = ColorModel(
          light: Color(AppColors.eveningScheduleCard),
          dark: Color(AppColors.eveningScheduleCardDark),
          darker: Color(AppColors.eveningScheduleCardDarker),
          fontColor: Color(AppColors.eveningScheduleFont),
        );
        break;
      default:
        colorModel = ColorModel(
          light: Color(AppColors.morningScheduleCard),
          dark: Color(AppColors.morningScheduleCardDark),
          darker: Color(AppColors.morningScheduleCardDarker),
          fontColor: Color(AppColors.morningScheduleCardDarker),
        );
    }
    return colorModel;
  }
}
