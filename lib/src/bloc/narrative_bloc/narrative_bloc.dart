import 'package:BeeCreative/src/assets_repo/google_drive_client.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/narrative_bloc/narrative_events.dart';
import 'package:BeeCreative/src/data/database/database_name.dart';
import 'package:BeeCreative/src/data/database/gallery/gallery_db_provider.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'package:BeeCreative/src/data/repository/gallery_repository.dart';
import 'package:collection/collection.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:googleapis/drive/v3.dart' as googleDrive;
import 'dart:io';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';

class NarrativeBloc extends Bloc {
  final GalleryDBProvider _dbProvider;
  final GalleryRepository _galleryRepository;
  final SharedPreferences _preferences;
  String _path;
  AutoRefreshingAuthClient _client;

  NarrativeBloc(this._dbProvider, this._galleryRepository, this._preferences) {
    init();
    initDatabase();
  }

  StreamController<NarrativeEvents> _narrativeEventsStreamController =
      StreamController<NarrativeEvents>.broadcast();
  Stream<NarrativeEvents> get narrativeEventStream =>
      _narrativeEventsStreamController.stream;
  Sink<NarrativeEvents> get _narrativeEventSink =>
      _narrativeEventsStreamController.sink;

  void init() {
    _narrativeEventsStreamController.stream.listen(_mapEventsToState);
  }

  Future initDatabase() async {
    var databasePath = await getDatabasesPath();
    _path = join(databasePath, DATABASE_NAME);
    return;
  }

  Future _initGoogleDrive() async {
    ServiceAccountCredentials _credentials =
        ServiceAccountCredentials.fromJson(GOOGLE_DRIVE_CREDENTIAL);
    _client = await clientViaServiceAccount(
      _credentials,
      [googleDrive.DriveApi.DriveScope],
    );
    return;
  }

  void _mapEventsToState(NarrativeEvents event) {
    if (event is SyncNarrativeToGoogleDrive) {
      _mapSyncNarrativeToGoogleDrive(event);
    } else if (event is SyncNarrativeToServer) {
      _mapSyncNarrativeToServer(event);
    }
  }

  void _mapSyncNarrativeToServer(SyncNarrativeToServer event) {
    try {
      List<Gallery> galleries = event.galleries;
      List<Map> serverSyncList = List<Map>();
      Map<int, List<Gallery>> groupedBySchedule =
          groupBy<Gallery, int>(galleries, (obj) => obj.scheduleId);
      List<Gallery> synced = List<Gallery>();
      groupedBySchedule.forEach((scheduleId, value) {
        String mediaType = 'drive';
        int numberOfPhoto = value.length;
        int numberOfVideo = 0;
        bool uploaded = true;
        List<Map> photos = List<Map>();

        value.forEach(
          (p) {
            p.uploaded = true;
            synced.add(p);
            photos.add(
              {
                'drive_id': p.driveId,
                'name': p.imageAlias,
                'type': 'photo',
                'narrative': true,
              },
            );
          },
        );
        Map serverSync = {
          'schedule_id': scheduleId,
          'mediatype': mediaType,
          'number_of_photo': numberOfPhoto,
          'number_of_video': numberOfVideo,
          'uploaded': uploaded,
          'photos': photos
        };
        serverSyncList.add(serverSync);
      });

      _galleryRepository
          .syncGalleryToServer(
        socialMedia: serverSyncList,
        token: _preferences.get('token'),
      )
          .then(
        (onValue) {
          if (onValue)
            dispatch(SyncNarrativeToServerSuccessful());
          else
            dispatch(
              SyncNarrativeToServerError(
                  (b) => b..message = 'An unknown error occured.'),
            );
        },
      );
    } on NoConnection catch (_) {
      dispatch(SyncNarrativeToServerError((b) => b..message = _.message));
    } catch (_) {}
  }

  void syncNarrativeToGoogleDrive({
    @required String narrativeName,
    @required DateTime date,
    @required List<Gallery> galleries,
    @required String narrative,
  }) {
    dispatch(SyncNarrativeToGoogleDrive((b) => b
      ..narrative = narrative
      ..date = date
      ..galleries = galleries
      ..narrativeName = narrativeName));
  }

  void _mapSyncNarrativeToGoogleDrive(SyncNarrativeToGoogleDrive event) async {
    try {
      int total = event.galleries.length;
      int done = 0;

      dispatch(SyncingNarrativeToGoogleDrive((b) => b
        ..total = total
        ..done = done));

      done = done + 1;

      String date = DateFormat.yMd().format(event.date);
      String folderId = await _galleryRepository.getFolderId(
        date: date,
        name: event.narrativeName,
        token: _preferences.get('token'),
      );

      bool connection = await ConnectionCheck().checkConnection();
      if (connection == false) throw NoConnection();

      await _initGoogleDrive();
      googleDrive.DriveApi api = googleDrive.DriveApi(_client);

      List<Gallery> updatedGallery = List<Gallery>();
      for (Gallery gallery in event.galleries) {
        dispatch(SyncingNarrativeToGoogleDrive((b) => b
          ..total = total
          ..done = done));
        googleDrive.File gFile = googleDrive.File();
        gFile.name = gallery.imageAlias;
        gFile.description = event.narrative;

        gFile.parents = [folderId];
        gFile.kind = 'drive#file';

        File file = File(gallery.imagePath);

        googleDrive.Media media =
            googleDrive.Media(file.openRead(), file.lengthSync());
        googleDrive.File uploaded =
            await api.files.create(gFile, uploadMedia: media);
        gallery.driveId = uploaded.id;
        gallery.description = event.narrative;
        updatedGallery.add(gallery);
        done = done + 1;
      }
      await _dbProvider.open(_path);
      await _dbProvider.updateAll(updatedGallery);
      dispatch(SyncingNarrativeToGoogleDriveSuccess());
      dispatch(SyncNarrativeToServer((b) => b..galleries = updatedGallery));
    } on NoConnection catch (_) {
      dispatch(
        SyncingNarrativeToGoogleDriveError((b) => b..message = _.message),
      );
    } on ServerFolderIDException catch (_) {
      dispatch(
        SyncingNarrativeToGoogleDriveError((b) => b..message = _.message),
      );
    } on SocialMediaUploadException catch (_) {
      dispatch(
        SyncingNarrativeToGoogleDriveError((b) => b..message = _.message),
      );
    } catch (_) {
      dispatch(
        SyncingNarrativeToGoogleDriveError((b) => b..message = _.toString()),
      );
    }
  }

  void dispatch(NarrativeEvents event) {
    _narrativeEventSink.add(event);
  }

  @override
  void dispose() {
    _narrativeEventsStreamController.close();
  }
}
