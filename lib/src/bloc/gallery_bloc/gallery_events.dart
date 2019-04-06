library gallery_events;

import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:built_value/built_value.dart';

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
  Schedule get schedule;

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
  Schedule get schedule;

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
  int get limit;

  GetGroupedByThumbnail._();

  factory GetGroupedByThumbnail([updates(GetGroupedByThumbnailBuilder b)]) =
      _$GetGroupedByThumbnail;
}

abstract class SyncToGoogleDrive extends GalleryEvents
    implements Built<SyncToGoogleDrive, SyncToGoogleDriveBuilder> {
  int get classId;

  SyncToGoogleDrive._();

  factory SyncToGoogleDrive([updates(SyncToGoogleDriveBuilder b)]) =
      _$SyncToGoogleDrive;
}

abstract class SyncingToGoogleDrive extends GalleryEvents
    implements Built<SyncingToGoogleDrive, SyncingToGoogleDriveBuilder> {
  int get total;
  int get done;

  SyncingToGoogleDrive._();

  factory SyncingToGoogleDrive([updates(SyncingToGoogleDriveBuilder b)]) =
      _$SyncingToGoogleDrive;
}

abstract class SyncingToGoogleDriveCompleted extends GalleryEvents
    implements
        Built<SyncingToGoogleDriveCompleted,
            SyncingToGoogleDriveCompletedBuilder> {
  // fields go here

  SyncingToGoogleDriveCompleted._();

  factory SyncingToGoogleDriveCompleted(
          [updates(SyncingToGoogleDriveCompletedBuilder b)]) =
      _$SyncingToGoogleDriveCompleted;
}

abstract class SyncingToGoogleDriveError extends GalleryEvents
    implements
        Built<SyncingToGoogleDriveError, SyncingToGoogleDriveErrorBuilder> {
  String get message;

  SyncingToGoogleDriveError._();

  factory SyncingToGoogleDriveError(
          [updates(SyncingToGoogleDriveErrorBuilder b)]) =
      _$SyncingToGoogleDriveError;
}
