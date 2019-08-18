library momonation_serializers;

import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'momonation_serializers.g.dart';

@SerializersFor(const [
  BuiltList,
  Bank,
  Comment,
  Comments,
  Feed,
  MomoFeed,
  User,
  UserList,
  Leaderboard,
  Leaderboards,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
