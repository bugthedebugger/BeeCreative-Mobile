library comments;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/momonation/comment/comment.dart';
import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comments.g.dart';

abstract class Comments implements Built<Comments, CommentsBuilder> {
  BuiltList<Comment> get comments;

  Comments._();

  factory Comments([updates(CommentsBuilder b)]) = _$Comments;

  String toJson() {
    return json.encode(serializers.serializeWith(Comments.serializer, this));
  }

  static Comments fromJson(String jsonString) {
    return serializers.deserializeWith(
        Comments.serializer, json.decode(jsonString));
  }

  static Serializer<Comments> get serializer => _$commentsSerializer;
}
