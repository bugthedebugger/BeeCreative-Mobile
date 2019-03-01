library schedule_pagination;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_pagination.g.dart';

abstract class SchedulesPagination
    implements Built<SchedulesPagination, SchedulesPaginationBuilder> {
  // fields go here

  SchedulesPagination._();

  factory SchedulesPagination([updates(SchedulesPaginationBuilder b)]) =
      _$SchedulesPagination;

  String toJson() {
    return json.encode(
        serializers.serializeWith(SchedulesPagination.serializer, this));
  }

  static SchedulesPagination fromJson(String jsonString) {
    return serializers.deserializeWith(
        SchedulesPagination.serializer, json.decode(jsonString));
  }

  static Serializer<SchedulesPagination> get serializer =>
      _$schedulesPaginationSerializer;
}
