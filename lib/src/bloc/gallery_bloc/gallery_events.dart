library gallery_events;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gallery_events.g.dart';

abstract class GalleryEvents {}

abstract class GalleryInitialize extends GalleryEvents
    implements Built<GalleryInitialize, GalleryInitializeBuilder> {
  // fields go here

  GalleryInitialize._();

  factory GalleryInitialize([updates(GalleryInitializeBuilder b)]) =
      _$GalleryInitialize;
}
