library photo_data;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'photo_data.g.dart';

abstract class PhotoData implements Built<PhotoData, PhotoDataBuilder> {
  PhotoData._();
  @BuiltValueField(wireName: 'drive_id')
  String get driveId;
  String get name;
  String get type;

  factory PhotoData([updates(PhotoDataBuilder b)]) = _$PhotoData;

  String toJson() {
    return json.encode(serializers.serializeWith(PhotoData.serializer, this));
  }

  static PhotoData fromJson(String jsonString) {
    return serializers.deserializeWith(
        PhotoData.serializer, json.decode(jsonString));
  }

  static Serializer<PhotoData> get serializer => _$photoDataSerializer;
}
