library drive_folder;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'drive_folder.g.dart';

abstract class DriveFolder implements Built<DriveFolder, DriveFolderBuilder> {
  @BuiltValueField(wireName: 'folder_id')
  String get folderId;

  DriveFolder._();

  factory DriveFolder([updates(DriveFolderBuilder b)]) = _$DriveFolder;

  String toJson() {
    return json.encode(serializers.serializeWith(DriveFolder.serializer, this));
  }

  static DriveFolder fromJson(String jsonString) {
    return serializers.deserializeWith(
        DriveFolder.serializer, json.decode(jsonString));
  }

  static Serializer<DriveFolder> get serializer => _$driveFolderSerializer;
}
