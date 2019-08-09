library feeds;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/feed/feed.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feeds.g.dart';

abstract class Feeds implements Built<Feeds, FeedsBuilder> {
  BuiltList<Feed> get feed;

  Feeds._();

  factory Feeds([updates(FeedsBuilder b)]) = _$Feeds;

  String toJson() {
    return json.encode(serializers.serializeWith(Feeds.serializer, this));
  }

  static Feeds fromJson(String jsonString) {
    return serializers.deserializeWith(
        Feeds.serializer, json.decode(jsonString));
  }

  static Serializer<Feeds> get serializer => _$feedsSerializer;
}
