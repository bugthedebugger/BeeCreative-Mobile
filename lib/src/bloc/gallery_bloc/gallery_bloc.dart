import 'dart:io';
import 'package:BeeCreative/src/assets_repo/google_drive_client.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'package:BeeCreative/src/data/repository/gallery_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_events.dart';
import 'package:BeeCreative/src/data/database/database_name.dart';
import 'package:BeeCreative/src/data/database/gallery/gallery_db_provider.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:googleapis/drive/v3.dart' as googleDrive;
import 'package:googleapis_auth/auth_io.dart';

class GalleryBloc extends Bloc {
  final GalleryDBProvider _dbProvider;
  final GalleryRepository _galleryRepository;
  final SharedPreferences _preferences;
  String _path;
  Directory _tempDir;
  AutoRefreshingAuthClient _client;

  GalleryBloc(this._dbProvider, this._galleryRepository, this._preferences) {
    initDatabase();
  }

  StreamController<GalleryEvents> _galleryEventsStreamController =
      StreamController<GalleryEvents>.broadcast();
  Stream<GalleryEvents> get galleryEventsStream =>
      _galleryEventsStreamController.stream;
  Sink<GalleryEvents> get _galleryEventsSink =>
      _galleryEventsStreamController.sink;

  StreamController<List<Gallery>> _galleryStreamController =
      StreamController<List<Gallery>>.broadcast();
  Stream<List<Gallery>> get galleryStream => _galleryStreamController.stream;
  Sink<List<Gallery>> get _gallerySink => _galleryStreamController.sink;

  StreamController<Map<DateTime, List<Gallery>>>
      _groupedGalleryStreamController =
      StreamController<Map<DateTime, List<Gallery>>>.broadcast();
  Stream<Map<DateTime, List<Gallery>>> get groupedGalleryStream =>
      _groupedGalleryStreamController.stream;
  Sink<Map<DateTime, List<Gallery>>> get _groupedGallerySink =>
      _groupedGalleryStreamController.sink;

  Future initDatabase() async {
    var databasePath = await getDatabasesPath();
    _path = join(databasePath, DATABASE_NAME);
    return;
  }

  void reInit() {
    _galleryEventsStreamController.stream.listen(_mapEventsToState);
  }

  Future init() async {
    _galleryEventsStreamController.stream.listen(_mapEventsToState);
    _tempDir = await getTemporaryDirectory();
    return await initDatabase();
  }

  void _mapEventsToState(GalleryEvents event) {
    if (event is Thumbnail) {
      _mapThumbnailEvent(event);
    } else if (event is GetFullGallery) {
      _mapGetFullGallery(event);
    } else if (event is TakePhoto) {
      _mapTakePhoto(event);
    } else if (event is GetGroupedByThumbnail) {
      _mapGetGroupedByThumbnail(event);
    } else if (event is UploadFromGallery) {
      _mapUploadFromGallery(event);
    } else if (event is SyncToGoogleDrive) {
      _mapSyncToGoogleDrive(event);
    } else if (event is SyncGalleryToServer) {
      _mapSyncGalleryToServer(event);
    }
  }

  void syncToServer() {
    dispatch(SyncGalleryToServer());
  }

  void _mapSyncGalleryToServer(SyncGalleryToServer event) async {
    await _dbProvider.open(_path);
    Map<int, List<Gallery>> galleries =
        await _dbProvider.getGroupedBySchedules();
    List<Gallery> synced = List<Gallery>();
    try {
      List<Map> serverSyncList = List<Map>();
      galleries.forEach(
        (key, value) {
          int scheduleId = key;
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
                  'narrative': p.description == null ? false : true,
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
        },
      );

      _galleryRepository
          .syncGalleryToServer(
        socialMedia: serverSyncList,
        token: _preferences.get('token'),
      )
          .then(
        (onvalue) async {
          if (onvalue) {
            await _dbProvider.open(_path);
            await _dbProvider.updateAll(synced);
            dispatch(SyncingGalleryToServerCompleted());
          } else {
            dispatch(SyncingGalleryToServerError(
                (b) => b..message = 'An unknown error occured.'));
          }
        },
      );
    } catch (_) {
      dispatch(SyncingGalleryToServerError((b) => b..message = _.toString()));
    }
  }

  void syncToGoogleDrive(int classId) {
    dispatch(SyncToGoogleDrive((b) => b..classId = classId));
  }

  Future _initGoogleDrive() async {
    ServiceAccountCredentials _credentials =
        ServiceAccountCredentials.fromJson(GOOGLE_DRIVE_CREDENTIAL);
    _client = await clientViaServiceAccount(
      _credentials,
      [googleDrive.DriveApi.DriveScope],
    );
  }

  void _mapSyncToGoogleDrive(SyncToGoogleDrive event) async {
    try {
      bool connection = await ConnectionCheck().checkConnection();
      if (connection == false) throw NoConnection();

      int uploadCount = 0;
      List<Gallery> galleries =
          await _dbProvider.getGalleryForUpload(event.classId);
      dispatch(
        SyncingToGoogleDrive((b) => b
          ..total = galleries.length
          ..done = uploadCount),
      );
      await _initGoogleDrive();
      googleDrive.DriveApi api = googleDrive.DriveApi(_client);
      List<Gallery> updateGalleries = List<Gallery>();

      for (Gallery gallery in galleries) {
        googleDrive.File file = googleDrive.File();

        File tempFile = File(gallery.imagePath);

        file.name = gallery.imageAlias;
        file.description = gallery.description;

        if (gallery.driveFolderId == null) {
          gallery.driveFolderId = UNRACKED_FOLDER_ID;
        } else {
          if (gallery.driveFolderId.isEmpty) {
            gallery.driveFolderId = UNRACKED_FOLDER_ID;
          }
        }

        file.parents = [gallery.driveFolderId];
        file.kind = 'drive#file';

        googleDrive.Media media =
            googleDrive.Media(tempFile.openRead(), tempFile.lengthSync());

        googleDrive.File uploaded =
            await api.files.create(file, uploadMedia: media);

        gallery.driveId = uploaded.id;
        gallery.uploaded = false;
        updateGalleries.add(gallery);
        uploadCount++;
        dispatch(
          SyncingToGoogleDrive((b) => b
            ..total = galleries.length
            ..done = uploadCount),
        );
      }
      await _dbProvider.open(_path);
      await _dbProvider.updateAll(updateGalleries);
      dispatch(SyncingToGoogleDriveCompleted());
      syncToServer();
    } on NoConnection catch (_) {
      dispatch(SyncingToGoogleDriveError((b) => b..message = _.message));
    } catch (_) {
      dispatch(SyncingToGoogleDriveError((b) => b..message = _.toString()));
    }
  }

  void uploadFromGallery(Schedule schedule) {
    dispatch(UploadFromGallery((b) => b..schedule.replace(schedule)));
  }

  void _mapUploadFromGallery(UploadFromGallery event) async {
    try {
      Map<String, String> imagesMap =
          await FilePicker.getMultiFilePath(type: FileType.IMAGE);

      if (imagesMap != null) {
        var images = imagesMap.values;
        List<Gallery> galleries = List<Gallery>();
        images.forEach((image) async {
          DateTime now = DateTime.now();
          Gallery gallery = Gallery();
          gallery.classId = event.schedule.classId;
          gallery.scheduleId = event.schedule.scheduleId;
          gallery.schoolId = event.schedule.scheduleId;
          gallery.imagePath = image;
          gallery.imageAlias = _aliasName(
            event.schedule.schoolName,
            event.schedule.grade,
            event.schedule.section,
            image,
          );
          gallery.uploaded = false;
          gallery.driveFolderId = event.schedule.folderId;
          gallery.deliveryDate = DateTime.parse(event.schedule.deliveryDate);
          gallery.createdAt = now;
          gallery.updatedAt = now;
          galleries.add(gallery);
        });
        await _dbProvider.open(_path);
        await _dbProvider.insertAll(galleries);
        _cacheGallery(galleries).then(
            (_) => getGroupedByThumbnail(event.schedule.classId, limit: 3));
      }
    } catch (e) {
      print(e);
    }
  }

  void getGroupedByThumbnail(int classId, {int limit = 500}) {
    dispatch(GetGroupedByThumbnail((b) => b
      ..classId = classId
      ..limit = limit));
  }

  void _mapGetGroupedByThumbnail(GetGroupedByThumbnail event) async {
    try {
      await _dbProvider.open(_path);
      Map<DateTime, List<Gallery>> groupedGallery = await _dbProvider
          .getGroupedByThumbnail(event.classId, limit: event.limit);
      List<Gallery> galleries = await _dbProvider.getGallery(event.classId);
      _cacheGallery(galleries).then((_) => addGrouped(groupedGallery));
    } catch (e) {
      print(e);
    }
  }

  void getFullGallery(int classId) {
    dispatch(GetFullGallery((d) => d..classId = classId));
  }

  void _mapGetFullGallery(GetFullGallery event) async {
    try {
      await _dbProvider.open(_path);
      List<Gallery> galleries = await _dbProvider.getGallery(event.classId);
      _cacheGallery(galleries).then((_) => update(galleries: galleries));
    } catch (e) {
      print(e);
    } finally {
      await _dbProvider.close();
    }
  }

  void takePhoto(Schedule schedule) {
    dispatch(TakePhoto((b) => b..schedule.replace(schedule)));
  }

  String _aliasName(String school, String grade, String section, String image) {
    return '$school\_$grade\_$section\_${image.substring(image.lastIndexOf("/") + 1)}';
  }

  void _mapTakePhoto(TakePhoto event) async {
    try {
      await _dbProvider.open(_path);
      var image = await ImagePicker.pickImage(source: ImageSource.camera);

      if (image != null) {
        DateTime now = DateTime.now();
        Gallery gallery = Gallery();
        gallery.classId = event.schedule.classId;
        gallery.scheduleId = event.schedule.scheduleId;
        gallery.schoolId = event.schedule.scheduleId;
        gallery.imagePath = image.path;
        gallery.imageAlias = _aliasName(
          event.schedule.schoolName,
          event.schedule.grade,
          event.schedule.section,
          image.path.toString(),
        );
        gallery.uploaded = false;
        gallery.deliveryDate = DateTime.parse(event.schedule.deliveryDate);
        gallery.createdAt = now;
        gallery.updatedAt = now;
        gallery.driveFolderId = event.schedule.folderId;
        gallery = await _dbProvider.insert(gallery);
        List<Gallery> galleries =
            await _dbProvider.getGallery(event.schedule.classId);
        Map<DateTime, List<Gallery>> groupedGallery = await _dbProvider
            .getGroupedByThumbnail(event.schedule.classId, limit: 3);
        _cacheGallery(galleries).then((_) =>
            update(galleries: galleries, groupedGallery: groupedGallery));
      }
    } catch (e) {
      print(e);
    }
  }

  void getThumbnail(int classId) {
    dispatch(Thumbnail((b) => b..classId = classId));
  }

  void _mapThumbnailEvent(Thumbnail event) async {
    try {
      await _dbProvider.open(_path);
      List<Gallery> galleries =
          await _dbProvider.getGallery(event.classId, limit: 3);
      _cacheGallery(galleries).then((_) => update(galleries: galleries));
    } catch (e) {
      print(e);
    } finally {
      await _dbProvider.close();
    }
  }

  void update({
    List<Gallery> galleries,
    Map<DateTime, List<Gallery>> groupedGallery,
  }) {
    addData(galleries);
    addGrouped(groupedGallery);
  }

  String cachGalleryPath(Gallery gallery) {
    String cachePath = _tempDir.path + '/' + gallery.imageAlias;
    return cachePath;
  }

  Future _cacheGallery(List<Gallery> galleries) async {
    await _dbProvider.open(_path);
    if (_tempDir == null) _tempDir = await getTemporaryDirectory();
    List<Gallery> updateGalleries = List<Gallery>();

    galleries.forEach((gallery) async {
      if (gallery.cachePath == null) {
        gallery.cachePath = cachGalleryPath(gallery);
        updateGalleries.add(gallery);
      }
      bool cacheExists = await File(gallery.cachePath).exists();

      if (!cacheExists) {
        updateGalleries.remove(gallery);
        updateGalleries.add(gallery);
        await FlutterImageCompress.compressAndGetFile(
          gallery.imagePath,
          gallery.cachePath,
          quality: 10,
        );
      }
    });

    return await _dbProvider.updateAll(updateGalleries);
  }

  void addData(List<Gallery> galleries) {
    _gallerySink.add(galleries);
  }

  void addGrouped(Map<DateTime, List<Gallery>> groupedGallery) {
    _groupedGallerySink.add(groupedGallery);
  }

  void dispatch(GalleryEvents event) {
    _galleryEventsSink.add(event);
  }

  @override
  void dispose() {
    _galleryEventsStreamController.close();
    _galleryStreamController.close();
    _groupedGalleryStreamController.close();
    _dbProvider.close();
  }
}
