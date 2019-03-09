library attendance_response;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendance_response.g.dart';

abstract class AttendanceResponse
    implements Built<AttendanceResponse, AttendanceResponseBuilder> {
  @nullable
  String get data;
  @nullable
  String get error;
  int get code;

  AttendanceResponse._();

  factory AttendanceResponse([updates(AttendanceResponseBuilder b)]) =
      _$AttendanceResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AttendanceResponse.serializer, this));
  }

  static AttendanceResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        AttendanceResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AttendanceResponse> get serializer =>
      _$attendanceResponseSerializer;
}
