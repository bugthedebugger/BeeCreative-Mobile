library attendee_data;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendee_data.g.dart';

abstract class AttendeeData
    implements Built<AttendeeData, AttendeeDataBuilder> {
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
  @BuiltValueField(wireName: 'tacher_id')
  int get teacherId;

  AttendeeData._();

  factory AttendeeData([updates(AttendeeDataBuilder b)]) = _$AttendeeData;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AttendeeData.serializer, this));
  }

  static AttendeeData fromJson(String jsonString) {
    return serializers.deserializeWith(
        AttendeeData.serializer, json.decode(jsonString));
  }

  static Serializer<AttendeeData> get serializer => _$attendeeDataSerializer;
}
