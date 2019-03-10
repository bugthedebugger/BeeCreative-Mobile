library student_randomizer_events;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/student/student_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_randomizer_events.g.dart';

abstract class RandomizerEvent {}

abstract class InitializeRandomizer extends RandomizerEvent
    implements Built<InitializeRandomizer, InitializeRandomizerBuilder> {
  InitializeRandomizer._();

  factory InitializeRandomizer([updates(InitializeRandomizerBuilder b)]) =
      _$InitializeRandomizer;
}

abstract class RandomStudent extends RandomizerEvent
    implements Built<RandomStudent, RandomStudentBuilder> {
  RandomStudent._();

  factory RandomStudent([updates(RandomStudentBuilder b)]) = _$RandomStudent;
}

abstract class NoStudentsEvent extends RandomizerEvent
    implements Built<NoStudentsEvent, NoStudentsEventBuilder> {
  NoStudentsEvent._();

  factory NoStudentsEvent([updates(NoStudentsEventBuilder b)]) =
      _$NoStudentsEvent;
}

abstract class ReinitializeRandomizerEvent extends RandomizerEvent
    implements
        Built<ReinitializeRandomizerEvent, ReinitializeRandomizerEventBuilder> {
  // fields go here

  ReinitializeRandomizerEvent._();

  factory ReinitializeRandomizerEvent(
          [updates(ReinitializeRandomizerEventBuilder b)]) =
      _$ReinitializeRandomizerEvent;
}
