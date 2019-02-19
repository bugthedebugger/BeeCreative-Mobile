library schedule_events;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_events.g.dart';

abstract class ScheduleEvents {}

abstract class GetScheduleFromNetwork extends ScheduleEvents
    implements Built<GetScheduleFromNetwork, GetScheduleFromNetworkBuilder> {
  String get token;

  GetScheduleFromNetwork._();

  factory GetScheduleFromNetwork([updates(GetScheduleFromNetworkBuilder b)]) =
      _$GetScheduleFromNetwork;
}

abstract class GetScheduleFromStorage extends ScheduleEvents
    implements Built<GetScheduleFromStorage, GetScheduleFromStorageBuilder> {
  String get token;

  GetScheduleFromStorage._();

  factory GetScheduleFromStorage([updates(GetScheduleFromStorageBuilder b)]) =
      _$GetScheduleFromStorage;
}

abstract class ScheduleExpired
    implements Built<ScheduleExpired, ScheduleExpiredBuilder> {
  DateTime get date;

  ScheduleExpired._();

  factory ScheduleExpired([updates(ScheduleExpiredBuilder b)]) =
      _$ScheduleExpired;
}
