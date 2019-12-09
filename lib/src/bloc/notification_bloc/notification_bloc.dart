import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/notification_bloc/notification_bloc_events.dart';
import 'package:BeeCreative/src/data/exceptions/notification_exception.dart';
import 'package:BeeCreative/src/data/models/notification_settings/notification_settings.dart';
import 'package:BeeCreative/src/data/repository/notification_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationBloc extends Bloc {
  final FirebaseMessaging _firebaseMessaging;
  final NotificationRepository _repository;

  NotificationBloc(
    this._repository,
    this._firebaseMessaging,
  );

  StreamController<NotificationEvents> _eventStreamController =
      StreamController<NotificationEvents>.broadcast();
  Stream<NotificationEvents> get eventStream => _eventStreamController.stream;
  Sink<NotificationEvents> get _eventSink => _eventStreamController.sink;

  void init() {
    _eventStreamController.stream.listen(_mapEventsToState);
  }

  void checkNotificationStatus() {
    dispatch(CheckNotificationStatus());
  }

  void enableNotification(NotificationSettings settings) {
    dispatch(EnableNotification((b) => b..settings.replace(settings)));
  }

  void disableNotification() {
    dispatch(DisableNotification());
  }

  void _mapEventsToState(NotificationEvents event) {
    if (event is CheckNotificationStatus) {
      _mapCheckNotificationStatus(event);
    } else if (event is EnableNotification) {
      _mapEnableNotification(event);
    } else if (event is DisableNotification) {
      _mapDisableNotification(event);
    }
  }

  void _mapDisableNotification(DisableNotification event) async {
    try {
      final bool disableFromServer = await _repository.disableNotification();
      if (disableFromServer) {
        await _firebaseMessaging.deleteInstanceID();
        final bool disabled = _repository.setSettings(
          settings: NotificationSettings(
            (b) => b
              ..enabled = false
              ..custom = false
              ..placeHolder = null
              ..time = null,
          ),
        );
        if (disabled) {
          dispatch(NotificationDisabled());
        } else {
          dispatch(
            NotificationError(
                (b) => b..message = 'Error disabling notification'),
          );
        }
      } else {
        dispatch(
          NotificationError((b) => b..message = 'Error disabling notification'),
        );
      }
    } on NotificationException catch (e) {
      dispatch(NotificationError((b) => b..message = e.message));
    } catch (_) {
      dispatch(NotificationError((b) => b..message = _.toString()));
    }
  }

  void _mapEnableNotification(EnableNotification event) async {
    try {
      final String fcmToken = await _firebaseMessaging.getToken();
      if (fcmToken.isEmpty) {
        dispatch(
          NotificationError(
            (b) => b..message = 'Unable to get FCM Token',
          ),
        );
      } else {
        final bool fcmToServer =
            await _repository.enableNotification(fcmToken: fcmToken);
        if (!fcmToServer) {
          dispatch(
            NotificationError(
              (b) => b..message = 'Unable to sync FCM Token to the server',
            ),
          );
        } else {
          final bool syncTimeToServer = await _repository.setNotificationTime(
            time: event.settings.time,
          );
          if (syncTimeToServer) {
            _repository.setSettings(settings: event.settings);
            dispatch(
              NotificationEnabled(
                (b) => b..settings.replace(event.settings),
              ),
            );
          } else {
            dispatch(
              NotificationError(
                (b) => b..message = 'Unable to sync notification to the server',
              ),
            );
          }
        }
      }
    } on NotificationException catch (e) {
      dispatch(NotificationError((b) => b..message = e.message));
    } catch (_) {
      dispatch(NotificationError((b) => b..message = _.toString()));
    }
  }

  void _mapCheckNotificationStatus(CheckNotificationStatus event) {
    try {
      final settings = _repository.getSettings;
      if (!settings.enabled) {
        dispatch(NotificationDisabled());
      } else {
        dispatch(NotificationEnabled((b) => b..settings.replace(settings)));
      }
    } catch (_) {
      dispatch(NotificationError((b) => b..message = _.toString()));
    }
  }

  void dispatch(NotificationEvents event) {
    _eventSink?.add(event);
  }

  @override
  void dispose() {
    _eventStreamController?.close();
  }
}
