library schedule;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule.g.dart';

abstract class Schedule implements Built<Schedule, ScheduleBuilder> {
  @BuiltValueField(wireName: 'schedule_id')
  int get scheduleId;
  @BuiltValueField(wireName: 'start_time')
  String get startTime;
  @BuiltValueField(wireName: 'end_time')
  String get endTime;
  @BuiltValueField(wireName: 'delivery_date')
  String get deliveryDate;
  @BuiltValueField(wireName: 'Day')
  String get day;
  @BuiltValueField(wireName: 'school_name')
  String get schoolName;
  @nullable
  String get content;
  @BuiltValueField(wireName: 'class_name')
  String get grade;
  String get section;
  @BuiltValueField(wireName: 'school_id')
  int get schoolId;
  @BuiltValueField(wireName: 'class_id')
  int get classId;
  @nullable
  BuiltList<String> get comment;
  double get hoursTaught;

  Schedule._();

  factory Schedule([updates(ScheduleBuilder b)]) = _$Schedule;

  String toJson() {
    return json.encode(serializers.serializeWith(Schedule.serializer, this));
  }

  static Schedule fromJson(String jsonString) {
    return serializers.deserializeWith(
        Schedule.serializer, json.decode(jsonString));
  }

  static Serializer<Schedule> get serializer => _$scheduleSerializer;
}
