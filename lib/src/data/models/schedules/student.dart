library student;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student.g.dart';

abstract class Student implements Built<Student, StudentBuilder> {
  @BuiltValueField(wireName: 'student_id')
  int get studentId;
  @BuiltValueField(wireName: 'student_fname')
  String get fname;
  @BuiltValueField(wireName: 'student_lname')
  String get lname;
  @BuiltValueField(wireName: 'school_id')
  int get schoolId;
  @BuiltValueField(wireName: 'class_id')
  int get classId;
  @BuiltValueField(wireName: 'SchoolName')
  String get schoolName;
  @BuiltValueField(wireName: 'class')
  String get grade;
  String get section;

  Student._();

  factory Student([updates(StudentBuilder b)]) = _$Student;

  String toJson() {
    return json.encode(serializers.serializeWith(Student.serializer, this));
  }

  static Student fromJson(String jsonString) {
    return serializers.deserializeWith(
        Student.serializer, json.decode(jsonString));
  }

  static Serializer<Student> get serializer => _$studentSerializer;
}
