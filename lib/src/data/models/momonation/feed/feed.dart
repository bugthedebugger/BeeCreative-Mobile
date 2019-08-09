library feed;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/comments/comments.dart';
import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feed.g.dart';

abstract class Feed implements Built<Feed, FeedBuilder> {
  int get id;
  String get title;
  String get description;
  String get time;
  int get amount;
  int get likes;
  bool get likedByMe;
  User get sender;
  User get receiver;
  Comments get comments;

  Feed._();

  factory Feed([updates(FeedBuilder b)]) = _$Feed;

  String toJson() {
    return json.encode(serializers.serializeWith(Feed.serializer, this));
  }

  static Feed fromJson(String jsonString) {
    return serializers.deserializeWith(
        Feed.serializer, json.decode(jsonString));
  }

  static Serializer<Feed> get serializer => _$feedSerializer;
}
