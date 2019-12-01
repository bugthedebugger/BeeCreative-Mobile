import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/notification_bloc/notification_bloc_events.dart';
import 'package:BeeCreative/src/data/exceptions/notification_exception.dart';
import 'package:BeeCreative/src/data/repository/notification_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationBloc extends Bloc {
  final NotificationRepository _repository;
  final SharedPreferences _preferences;

  NotificationBloc(this._repository, this._preferences);

  StreamController<NotificationEvents> _eventStreamController =
      StreamController<NotificationEvents>.broadcast();
  Stream<NotificationEvents> get eventStream => _eventStreamController.stream;
  Sink<NotificationEvents> get _eventSink => _eventStreamController.sink;

  void init() {
    _eventStreamController.stream.listen(_mapEventsToState);
  }

  void _mapEventsToState(NotificationEvents event) {
    if (event is EnableNotification) {
      _mapEnableNotification(event);
    } else if (event is CheckNotificationEnabled) {
      _mapCheckNotificationEnabled(event);
    }
  }

  void _mapCheckNotificationEnabled(CheckNotificationEnabled event) {}

  void enableNotification(String time) {
    dispatch(
      EnableNotification(
        (b) => b..time = time,
      ),
    );
  }

  void _mapEnableNotification(EnableNotification event) async {
    try {
      final bool response =
          await _repository.enableNotification(time: event.time);
      if (response) {
        dispatch(EnableNotificationSuccess());
      }
    } on NotificationException catch (e) {
      dispatch(
        EnableNotificationError(
          (b) => b..message = e.message,
        ),
      );
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
