library mood_meter_response;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/mood_meter/mood_meter.dart';
import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mood_meter_response.g.dart';

abstract class MoodMeterResponse
    implements Built<MoodMeterResponse, MoodMeterResponseBuilder> {
  @nullable
  @BuiltValueField(wireName: 'MoodMeter')
  MoodMeter get moodMeter;

  MoodMeterResponse._();

  factory MoodMeterResponse([updates(MoodMeterResponseBuilder b)]) =
      _$MoodMeterResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MoodMeterResponse.serializer, this));
  }

  static MoodMeterResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        MoodMeterResponse.serializer, json.decode(jsonString));
  }

  static Serializer<MoodMeterResponse> get serializer =>
      _$moodMeterResponseSerializer;
}
