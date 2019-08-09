library momo_feed;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/bank/bank.dart';
import 'package:BeeCreative/src/data/models/momonation/feeds/feeds.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'momo_feed.g.dart';

abstract class MomoFeed implements Built<MomoFeed, MomoFeedBuilder> {
  Bank get bank;
  Feeds get feed;

  MomoFeed._();

  factory MomoFeed([updates(MomoFeedBuilder b)]) = _$MomoFeed;

  String toJson() {
    return json.encode(serializers.serializeWith(MomoFeed.serializer, this));
  }

  static MomoFeed fromJson(String jsonString) {
    return serializers.deserializeWith(
        MomoFeed.serializer, json.decode(jsonString));
  }

  static Serializer<MomoFeed> get serializer => _$momoFeedSerializer;
}
