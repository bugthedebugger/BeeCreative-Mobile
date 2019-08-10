library user_list;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_list.g.dart';

abstract class UserList implements Built<UserList, UserListBuilder> {
  @nullable
  BuiltList<User> get users;

  UserList._();

  factory UserList([updates(UserListBuilder b)]) = _$UserList;

  String toJson() {
    return json.encode(serializers.serializeWith(UserList.serializer, this));
  }

  static UserList fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserList.serializer, json.decode(jsonString));
  }

  static Serializer<UserList> get serializer => _$userListSerializer;
}
