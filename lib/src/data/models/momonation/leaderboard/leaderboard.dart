library leaderboard;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'leaderboard.g.dart';

abstract class Leaderboard implements Built<Leaderboard, LeaderboardBuilder> {
  @nullable
  BuiltList<User> get users;
  @nullable
  String get date;
  @nullable
  int get min;
  @nullable
  int get max;

  Leaderboard._();

  factory Leaderboard([updates(LeaderboardBuilder b)]) = _$Leaderboard;

  String toJson() {
    return json.encode(serializers.serializeWith(Leaderboard.serializer, this));
  }

  static Leaderboard fromJson(String jsonString) {
    return serializers.deserializeWith(
        Leaderboard.serializer, json.decode(jsonString));
  }

  static Serializer<Leaderboard> get serializer => _$leaderboardSerializer;
}
