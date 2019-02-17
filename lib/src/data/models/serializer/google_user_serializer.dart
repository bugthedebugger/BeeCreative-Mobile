library google_user_serializer;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/user/google_user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'google_user_serializer.g.dart';

@SerializersFor(const [
  GoogleUser,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
