library google_user;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/google_user_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_user.g.dart';

abstract class GoogleUser implements Built<GoogleUser, GoogleUserBuilder> {
  // fields go here

  GoogleUser._();

  factory GoogleUser([updates(GoogleUserBuilder b)]) = _$GoogleUser;

  String toJson() {
    return json.encode(serializers.serializeWith(GoogleUser.serializer, this));
  }

  static GoogleUser fromJson(String jsonString) {
    return serializers.deserializeWith(
        GoogleUser.serializer, json.decode(jsonString));
  }

  static Serializer<GoogleUser> get serializer => _$googleUserSerializer;
}
