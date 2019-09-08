library mood_meter_events;

import 'package:built_value/built_value.dart';

part 'mood_meter_events.g.dart';

abstract class MoodMeterEvents {}

abstract class SaveMood extends MoodMeterEvents
    implements Built<SaveMood, SaveMoodBuilder> {
  int get mood;

  SaveMood._();

  factory SaveMood([updates(SaveMoodBuilder b)]) = _$SaveMood;
}

abstract class MoodMeterSuccess extends MoodMeterEvents
    implements Built<MoodMeterSuccess, MoodMeterSuccessBuilder> {
  MoodMeterSuccess._();

  factory MoodMeterSuccess([updates(MoodMeterSuccessBuilder b)]) =
      _$MoodMeterSuccess;
}

abstract class MoodMeterError extends MoodMeterEvents
    implements Built<MoodMeterError, MoodMeterErrorBuilder> {
  String get message;

  MoodMeterError._();

  factory MoodMeterError([updates(MoodMeterErrorBuilder b)]) = _$MoodMeterError;
}
