library notification_bloc_events;

import 'package:BeeCreative/src/data/models/notification_settings/notification_settings.dart';
import 'package:built_value/built_value.dart';
part 'notification_bloc_events.g.dart';

abstract class NotificationEvents {}

abstract class CheckNotificationStatus extends NotificationEvents
    implements Built<CheckNotificationStatus, CheckNotificationStatusBuilder> {
  CheckNotificationStatus._();

  factory CheckNotificationStatus([updates(CheckNotificationStatusBuilder b)]) =
      _$CheckNotificationStatus;
}

abstract class NotificationEnabled extends NotificationEvents
    implements Built<NotificationEnabled, NotificationEnabledBuilder> {
  NotificationSettings get settings;

  NotificationEnabled._();

  factory NotificationEnabled([updates(NotificationEnabledBuilder b)]) =
      _$NotificationEnabled;
}

abstract class NotificationDisabled extends NotificationEvents
    implements Built<NotificationDisabled, NotificationDisabledBuilder> {
  NotificationDisabled._();

  factory NotificationDisabled([updates(NotificationDisabledBuilder b)]) =
      _$NotificationDisabled;
}

abstract class EnableNotification extends NotificationEvents
    implements Built<EnableNotification, EnableNotificationBuilder> {
  NotificationSettings get settings;

  EnableNotification._();

  factory EnableNotification([updates(EnableNotificationBuilder b)]) =
      _$EnableNotification;
}

abstract class DisableNotification extends NotificationEvents
    implements Built<DisableNotification, DisableNotificationBuilder> {
  DisableNotification._();

  factory DisableNotification([updates(DisableNotificationBuilder b)]) =
      _$DisableNotification;
}

abstract class NotificationError extends NotificationEvents
    implements Built<NotificationError, NotificationErrorBuilder> {
  String get message;

  NotificationError._();

  factory NotificationError([updates(NotificationErrorBuilder b)]) =
      _$NotificationError;
}
