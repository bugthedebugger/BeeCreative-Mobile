library attendance;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/attendance/attendance_record.dart';
import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendance.g.dart';

abstract class Attendance implements Built<Attendance, AttendanceBuilder> {
  BuiltList<AttendanceRecord> get attendanceRecord;

  Attendance._();

  factory Attendance([updates(AttendanceBuilder b)]) = _$Attendance;

  String toJson() {
    return json.encode(serializers.serializeWith(Attendance.serializer, this));
  }

  static Attendance fromJson(String jsonString) {
    return serializers.deserializeWith(
        Attendance.serializer, json.decode(jsonString));
  }

  static Serializer<Attendance> get serializer => _$attendanceSerializer;
}
