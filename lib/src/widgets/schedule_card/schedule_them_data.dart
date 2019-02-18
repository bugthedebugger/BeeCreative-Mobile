import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:flutter/material.dart';

class ScheduleThemeData {
  var cardColor;
  var darkCardColor;
  var maleIcon;
  var femaleIcon;
  var sun;
  var cloud;
  var house;

  ScheduleThemeData({@required timeOfDay}) {
    switch (timeOfDay) {
      case "morning":
        this.cardColor = AppColors.morningScheduleCard;
        this.darkCardColor = AppColors.morningScheduleCardDark;
        this.maleIcon = AppPhotos.morningScheduleMale;
        this.femaleIcon = AppPhotos.morningScheduleFemale;
        this.sun = AppPhotos.morningScheduleSun;
        this.cloud = AppPhotos.morningScheduleCloud;
        this.house = AppPhotos.morningScheduleHouse;
        break;

      case "afternoon":
        this.cardColor = AppColors.afternoonScheduleCard;
        this.darkCardColor = AppColors.afternoonScheduleCardDark;
        this.maleIcon = AppPhotos.afternoonScheduleMale;
        this.femaleIcon = AppPhotos.afternoonScheduleFemale;
        this.sun = AppPhotos.afternoonScheduleSun;
        this.cloud = AppPhotos.afternoonScheduleCloud;
        this.house = AppPhotos.afternoonScheduleHouse;
        break;

      case "evening":
        this.cardColor = AppColors.eveningScheduleCard;
        this.darkCardColor = AppColors.eveningScheduleCardDark;
        this.maleIcon = AppPhotos.eveningScheduleMale;
        this.femaleIcon = AppPhotos.eveningScheduleFemale;
        this.sun = AppPhotos.eveningScheduleSun;
        this.cloud = AppPhotos.eveningScheduleCloud;
        this.house = AppPhotos.eveningScheduleHouse;
        break;

      default:
        this.cardColor = AppColors.morningScheduleCard;
        this.darkCardColor = AppColors.morningScheduleCardDark;
        this.maleIcon = AppPhotos.morningScheduleMale;
        this.femaleIcon = AppPhotos.morningScheduleFemale;
        this.sun = AppPhotos.morningScheduleSun;
        this.cloud = AppPhotos.morningScheduleCloud;
        this.house = AppPhotos.morningScheduleHouse;
    }
  }
}
