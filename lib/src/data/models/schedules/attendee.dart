library attendee;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/schedules/attendee_data.dart';
import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendee.g.dart';

abstract class Attendee implements Built<Attendee, AttendeeBuilder> {
  BuiltList<AttendeeData> get data;
  @BuiltValueField(wireName: 'is_attendee')
  int get isAttendee;

  Attendee._();

  factory Attendee([updates(AttendeeBuilder b)]) = _$Attendee;

  String toJson() {
    return json.encode(serializers.serializeWith(Attendee.serializer, this));
  }

  static Attendee fromJson(String jsonString) {
    return serializers.deserializeWith(
        Attendee.serializer, json.decode(jsonString));
  }

  static Serializer<Attendee> get serializer => _$attendeeSerializer;
}
