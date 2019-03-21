import 'dart:io';
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
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class GalleryBloc extends Bloc {
  GalleryDBProvider _dbProvider;
  String _path;
  Directory tempDir;

  GalleryBloc(this._dbProvider) {
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
  }

  Future init() async {
    _galleryEventsStreamController.stream.listen(_mapEventsToState);
    tempDir = await getTemporaryDirectory();
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
          gallery.deliveryDate = DateTime.parse(event.schedule.deliveryDate);
          gallery.createdAt = now;
          gallery.updatedAt = now;
          galleries.add(gallery);
        });
        await _dbProvider.open(_path);
        await _dbProvider.insertAll(galleries);
        _cacheGallery(galleries)
            .then((_) => getGroupedByThumbnail(event.schedule.classId));
      }
    } catch (e) {
      print(e);
    }
  }

  void getGroupedByThumbnail(int classId) {
    dispatch(GetGroupedByThumbnail((b) => b..classId = classId));
  }

  void _mapGetGroupedByThumbnail(GetGroupedByThumbnail event) async {
    try {
      await _dbProvider.open(_path);
      Map<DateTime, List<Gallery>> groupedGallery =
          await _dbProvider.getGroupedByThumbnail(event.classId);
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
        gallery = await _dbProvider.insert(gallery);
        List<Gallery> galleries =
            await _dbProvider.getGallery(event.schedule.classId);
        Map<DateTime, List<Gallery>> groupedGallery =
            await _dbProvider.getGroupedByThumbnail(event.schedule.classId);
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
    String cachePath = tempDir.path + '/' + gallery.imageAlias;
    return cachePath;
  }

  Future _cacheGallery(List<Gallery> galleries) async {
    await _dbProvider.open(_path);
    if (tempDir == null) tempDir = await getTemporaryDirectory();
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
