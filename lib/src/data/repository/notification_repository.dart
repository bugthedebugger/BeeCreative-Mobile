import 'package:BeeCreative/src/data/local/notification_local_call.dart';
import 'package:BeeCreative/src/data/models/notification_settings/notification_settings.dart';
import 'package:BeeCreative/src/data/network/notification_data_source.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationRepository {
  final NotificationDataSource _dataSource;
  final SharedPreferences _preferences;
  final NotificationLocalCall _localCall;

  NotificationRepository(this._dataSource, this._preferences, this._localCall);

  Future<bool> enableNotification({@required String fcmToken}) async {
    String token = _preferences.get('token');

    return await _dataSource.enableNotification(
      token: token,
      fcmToken: fcmToken,
    );
  }

  Future<bool> setNotificationTime({@required String time}) async {
    String token = _preferences.get('token');

    return await _dataSource.setNotificationTime(
      token: token,
      time: time,
    );
  }

  NotificationSettings get getSettings => _localCall.getSettings();

  bool setSettings({@required NotificationSettings settings}) =>
      _localCall.setSettings(settings: settings);
}
