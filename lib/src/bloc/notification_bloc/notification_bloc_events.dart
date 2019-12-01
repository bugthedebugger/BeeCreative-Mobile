library notification_bloc_events;

import 'package:built_value/built_value.dart';
part 'notification_bloc_events.g.dart';

abstract class NotificationEvents {}

abstract class EnableNotification extends NotificationEvents
    implements Built<EnableNotification, EnableNotificationBuilder> {
  String get time;

  EnableNotification._();

  factory EnableNotification([updates(EnableNotificationBuilder b)]) =
      _$EnableNotification;
}

abstract class EnableNotificationError extends NotificationEvents
    implements Built<EnableNotificationError, EnableNotificationErrorBuilder> {
  String get message;

  EnableNotificationError._();

  factory EnableNotificationError([updates(EnableNotificationErrorBuilder b)]) =
      _$EnableNotificationError;
}

abstract class EnableNotificationSuccess extends NotificationEvents
    implements
        Built<EnableNotificationSuccess, EnableNotificationSuccessBuilder> {
  EnableNotificationSuccess._();

  factory EnableNotificationSuccess(
          [updates(EnableNotificationSuccessBuilder b)]) =
      _$EnableNotificationSuccess;
}
