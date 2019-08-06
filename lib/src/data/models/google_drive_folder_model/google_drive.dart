library google_drive;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/google_drive_folder_model/drive_folder.dart';
import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_drive.g.dart';

abstract class GoogleDrive implements Built<GoogleDrive, GoogleDriveBuilder> {
  @BuiltValueField(wireName: 'data')
  DriveFolder get folder;
  int get code;

  GoogleDrive._();

  factory GoogleDrive([updates(GoogleDriveBuilder b)]) = _$GoogleDrive;

  String toJson() {
    return json.encode(serializers.serializeWith(GoogleDrive.serializer, this));
  }

  static GoogleDrive fromJson(String jsonString) {
    return serializers.deserializeWith(
        GoogleDrive.serializer, json.decode(jsonString));
  }

  static Serializer<GoogleDrive> get serializer => _$googleDriveSerializer;
}
