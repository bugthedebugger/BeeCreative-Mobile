import 'package:BeeCreative/src/assets_repo/notification_settings_constants.dart';
import 'package:BeeCreative/src/data/exceptions/notification_exception.dart';
import 'package:BeeCreative/src/data/models/notification_settings/notification_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';

class NotificationLocalCall {
  final SharedPreferences _preferences;

  NotificationLocalCall(this._preferences);

  NotificationSettings getSettings() {
    final NotificationSettings settings = NotificationSettings(
      (b) => b
        ..custom = _preferences.getBool(
          NotificationSettingsConstants.CUSTOM,
        )
        ..placeHolder = _preferences.get(
          NotificationSettingsConstants.TIME_PLACEHOLDER,
        )
        ..enabled = _preferences.getBool(
          NotificationSettingsConstants.ENABLED,
        )
        ..time = _preferences.get(
          NotificationSettingsConstants.TIME_VALUE,
        ),
    );
    return settings;
  }

  bool setSettings({@required NotificationSettings settings}) {
    try {
      _preferences.setBool(
        NotificationSettingsConstants.ENABLED,
        settings.enabled,
      );
      _preferences.setBool(
        NotificationSettingsConstants.CUSTOM,
        settings.custom,
      );
      _preferences.setString(
        NotificationSettingsConstants.TIME_PLACEHOLDER,
        settings.placeHolder,
      );
      _preferences.setString(
        NotificationSettingsConstants.TIME_VALUE,
        settings.time,
      );
    } catch (_) {
      throw NotificationException(_.toString());
    }
    return true;
  }
}
