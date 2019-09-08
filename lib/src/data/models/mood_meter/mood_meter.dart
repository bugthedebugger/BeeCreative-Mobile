library mood_meter;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mood_meter.g.dart';

abstract class MoodMeter implements Built<MoodMeter, MoodMeterBuilder> {
  @BuiltValueField(wireName: 'mood_id')
  int get moodID;
  @BuiltValueField(wireName: 'user_id')
  int get userID;
  int get id;

  MoodMeter._();

  factory MoodMeter([updates(MoodMeterBuilder b)]) = _$MoodMeter;

  String toJson() {
    return json.encode(serializers.serializeWith(MoodMeter.serializer, this));
  }

  static MoodMeter fromJson(String jsonString) {
    return serializers.deserializeWith(
        MoodMeter.serializer, json.decode(jsonString));
  }

  static Serializer<MoodMeter> get serializer => _$moodMeterSerializer;
}
