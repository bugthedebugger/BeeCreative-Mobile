library user_data;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_data.g.dart';

abstract class UserData implements Built<UserData, UserDataBuilder> {
  @BuiltValueField(wireName: 'user_name')
  String get userName;

  String get email;
  String get photo;
  String get token;

  @BuiltValueField(wireName: 'expires_at')
  String get expiresAt;

  @nullable
  int get phone1;

  @nullable
  int get phone2;

  @nullable
  String get address;

  @nullable
  String get bio;

  UserData._();

  factory UserData([updates(UserDataBuilder b)]) = _$UserData;

  String toJson() {
    return json.encode(serializers.serializeWith(UserData.serializer, this));
  }

  static UserData fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserData.serializer, json.decode(jsonString));
  }

  static Serializer<UserData> get serializer => _$userDataSerializer;
}
