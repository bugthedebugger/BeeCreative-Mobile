library attendance_record;

import 'dart:convert';
import 'package:BeeCreative/src/data/models/schedules/schedule.dart';
import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:BeeCreative/src/data/models/student/student.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendance_record.g.dart';

abstract class AttendanceRecord
    implements Built<AttendanceRecord, AttendanceRecordBuilder> {
  Student get student;
  Schedule get schedule;
  bool get attendance;

  AttendanceRecord._();

  factory AttendanceRecord([updates(AttendanceRecordBuilder b)]) =
      _$AttendanceRecord;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AttendanceRecord.serializer, this));
  }

  static AttendanceRecord fromJson(String jsonString) {
    return serializers.deserializeWith(
        AttendanceRecord.serializer, json.decode(jsonString));
  }

  static Serializer<AttendanceRecord> get serializer =>
      _$attendanceRecordSerializer;
}
