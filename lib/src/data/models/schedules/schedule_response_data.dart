library schedule_response_data;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:BeeCreative/src/data/models/student/student.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_response_data.g.dart';

abstract class ScheduleResponseData
    implements Built<ScheduleResponseData, ScheduleResponseDataBuilder> {
  @BuiltValueField(wireName: 'class_id')
  int get classId;
  @BuiltValueField(wireName: 'Class')
  String get grade;
  String get section;
  @BuiltValueField(wireName: 'School_id')
  int get schoolId;
  @BuiltValueField(wireName: 'school_name')
  String get schoolName;
  @nullable
  BuiltList<Student> get students;

  ScheduleResponseData._();

  factory ScheduleResponseData([updates(ScheduleResponseDataBuilder b)]) =
      _$ScheduleResponseData;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ScheduleResponseData.serializer, this));
  }

  static ScheduleResponseData fromJson(String jsonString) {
    return serializers.deserializeWith(
        ScheduleResponseData.serializer, json.decode(jsonString));
  }

  static Serializer<ScheduleResponseData> get serializer =>
      _$scheduleResponseDataSerializer;
}
