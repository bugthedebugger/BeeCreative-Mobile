import 'package:BeeCreative/src/data/network/notification_data_source.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationRepository {
  final NotificationDataSource _dataSource;
  final SharedPreferences _preferences;

  NotificationRepository(this._dataSource, this._preferences);

  Future<bool> enableNotification({@required String time}) async {
    String token = _preferences.get('token');

    return await _dataSource.enableNotification(
      token: token,
      time: time,
    );
  }
}