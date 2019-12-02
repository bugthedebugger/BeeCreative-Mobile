library notification_settings;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_settings.g.dart';

abstract class NotificationSettings
    implements Built<NotificationSettings, NotificationSettingsBuilder> {
  bool get enabled;
  bool get custom;
  @nullable
  String get placeHolder;
  String get time;

  NotificationSettings._();

  factory NotificationSettings([updates(NotificationSettingsBuilder b)]) =
      _$NotificationSettings;

  String toJson() {
    return json.encode(
        serializers.serializeWith(NotificationSettings.serializer, this));
  }

  static NotificationSettings fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationSettings.serializer, json.decode(jsonString));
  }

  static Serializer<NotificationSettings> get serializer =>
      _$notificationSettingsSerializer;
}
