library gallery_events;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gallery_events.g.dart';

abstract class GalleryEvents {}

abstract class Thumbnail extends GalleryEvents
    implements Built<Thumbnail, ThumbnailBuilder> {
  int get classId;

  Thumbnail._();

  factory Thumbnail([updates(ThumbnailBuilder b)]) = _$Thumbnail;
}

abstract class TakePhoto extends GalleryEvents
    implements Built<TakePhoto, TakePhotoBuilder> {
  Schedule get schedule;

  TakePhoto._();

  factory TakePhoto([updates(TakePhotoBuilder b)]) = _$TakePhoto;
}

abstract class UploadFromGallery extends GalleryEvents
    implements Built<UploadFromGallery, UploadFromGalleryBuilder> {
  // fields go here

  UploadFromGallery._();

  factory UploadFromGallery([updates(UploadFromGalleryBuilder b)]) =
      _$UploadFromGallery;
}

abstract class PhotoTaken extends GalleryEvents
    implements Built<PhotoTaken, PhotoTakenBuilder> {
  // fields go here

  PhotoTaken._();

  factory PhotoTaken([updates(PhotoTakenBuilder b)]) = _$PhotoTaken;
}

abstract class UploadedFromGallery extends GalleryEvents
    implements Built<UploadedFromGallery, UploadedFromGalleryBuilder> {
  // fields go here

  UploadedFromGallery._();

  factory UploadedFromGallery([updates(UploadedFromGalleryBuilder b)]) =
      _$UploadedFromGallery;
}

abstract class GetFullGallery extends GalleryEvents
    implements Built<GetFullGallery, GetFullGalleryBuilder> {
  int get classId;

  GetFullGallery._();

  factory GetFullGallery([updates(GetFullGalleryBuilder b)]) = _$GetFullGallery;
}

abstract class GetGroupedByThumbnail extends GalleryEvents
    implements Built<GetGroupedByThumbnail, GetGroupedByThumbnailBuilder> {
  int get classId;

  GetGroupedByThumbnail._();

  factory GetGroupedByThumbnail([updates(GetGroupedByThumbnailBuilder b)]) =
      _$GetGroupedByThumbnail;
}
