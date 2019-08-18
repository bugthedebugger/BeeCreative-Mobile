library leaderboards;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/leaderboard/leaderboard.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'leaderboards.g.dart';

abstract class Leaderboards
    implements Built<Leaderboards, LeaderboardsBuilder> {
  @nullable
  BuiltList<Leaderboard> get leaderboards;

  Leaderboards._();

  factory Leaderboards([updates(LeaderboardsBuilder b)]) = _$Leaderboards;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Leaderboards.serializer, this));
  }

  static Leaderboards fromJson(String jsonString) {
    return serializers.deserializeWith(
        Leaderboards.serializer, json.decode(jsonString));
  }

  static Serializer<Leaderboards> get serializer => _$leaderboardsSerializer;
}
