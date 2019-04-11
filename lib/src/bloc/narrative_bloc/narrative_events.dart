library narrative_events;

import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:built_value/built_value.dart';

part 'narrative_events.g.dart';

abstract class NarrativeEvents {}

abstract class SyncNarrativeToGoogleDrive extends NarrativeEvents
    implements
        Built<SyncNarrativeToGoogleDrive, SyncNarrativeToGoogleDriveBuilder> {
  List<Gallery> get galleries;
  String get narrativeName;
  String get narrative;
  DateTime get date;

  SyncNarrativeToGoogleDrive._();

  factory SyncNarrativeToGoogleDrive(
          [updates(SyncNarrativeToGoogleDriveBuilder b)]) =
      _$SyncNarrativeToGoogleDrive;
}

abstract class SyncingNarrativeToGoogleDrive extends NarrativeEvents
    implements
        Built<SyncingNarrativeToGoogleDrive,
            SyncingNarrativeToGoogleDriveBuilder> {
  int get total;
  int get done;

  SyncingNarrativeToGoogleDrive._();

  factory SyncingNarrativeToGoogleDrive(
          [updates(SyncingNarrativeToGoogleDriveBuilder b)]) =
      _$SyncingNarrativeToGoogleDrive;
}

abstract class SyncingNarrativeToGoogleDriveError extends NarrativeEvents
    implements
        Built<SyncingNarrativeToGoogleDriveError,
            SyncingNarrativeToGoogleDriveErrorBuilder> {
  String get message;

  SyncingNarrativeToGoogleDriveError._();

  factory SyncingNarrativeToGoogleDriveError(
          [updates(SyncingNarrativeToGoogleDriveErrorBuilder b)]) =
      _$SyncingNarrativeToGoogleDriveError;
}

abstract class SyncingNarrativeToGoogleDriveSuccess extends NarrativeEvents
    implements
        Built<SyncingNarrativeToGoogleDriveSuccess,
            SyncingNarrativeToGoogleDriveSuccessBuilder> {
  SyncingNarrativeToGoogleDriveSuccess._();

  factory SyncingNarrativeToGoogleDriveSuccess(
          [updates(SyncingNarrativeToGoogleDriveSuccessBuilder b)]) =
      _$SyncingNarrativeToGoogleDriveSuccess;
}

abstract class SyncNarrativeToServer extends NarrativeEvents
    implements Built<SyncNarrativeToServer, SyncNarrativeToServerBuilder> {
  SyncNarrativeToServer._();

  List<Gallery> get galleries;

  factory SyncNarrativeToServer([updates(SyncNarrativeToServerBuilder b)]) =
      _$SyncNarrativeToServer;
}

abstract class SyncNarrativeToServerSuccessful extends NarrativeEvents
    implements
        Built<SyncNarrativeToServerSuccessful,
            SyncNarrativeToServerSuccessfulBuilder> {
  SyncNarrativeToServerSuccessful._();

  factory SyncNarrativeToServerSuccessful(
          [updates(SyncNarrativeToServerSuccessfulBuilder b)]) =
      _$SyncNarrativeToServerSuccessful;
}

abstract class SyncNarrativeToServerError extends NarrativeEvents
    implements
        Built<SyncNarrativeToServerError, SyncNarrativeToServerErrorBuilder> {
  String get message;

  SyncNarrativeToServerError._();

  factory SyncNarrativeToServerError(
          [updates(SyncNarrativeToServerErrorBuilder b)]) =
      _$SyncNarrativeToServerError;
}
