library social_media;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:BeeCreative/src/data/models/socialmedia/photo_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_media.g.dart';

abstract class SocialMedia implements Built<SocialMedia, SocialMediaBuilder> {
  SocialMedia._();

  @BuiltValueField(wireName: 'schedule_id')
  int get scheduleId;
  @BuiltValueField(wireName: 'mediatype')
  String get mediaType;
  @BuiltValueField(wireName: 'number_of_photo')
  int get numberOfPhotos;
  @BuiltValueField(wireName: 'number_of_video')
  int get numberOfVideo;
  bool get uploaded;
  BuiltList<PhotoData> get photos;

  factory SocialMedia([updates(SocialMediaBuilder b)]) = _$SocialMedia;

  String toJson() {
    return json.encode(serializers.serializeWith(SocialMedia.serializer, this));
  }

  static SocialMedia fromJson(String jsonString) {
    return serializers.deserializeWith(
        SocialMedia.serializer, json.decode(jsonString));
  }

  static Serializer<SocialMedia> get serializer => _$socialMediaSerializer;
}
