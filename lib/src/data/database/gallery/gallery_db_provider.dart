import 'package:BeeCreative/src/data/database/database_name.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery.dart';
import 'package:BeeCreative/src/data/models/gallery/gallery_wirename.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class GalleryDBProvider {
  Database db;

  /// open the connection to gallery table
  Future open(String path) async {
    if (path.isEmpty) {
      var databasePath = await getDatabasesPath();
      path = join(databasePath, DATABASE_NAME);
    }

    String query = '''
      CREATE TABLE $tableGallery (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnScheduleId INTEGER NOT NULL,
        $columnClassId INTEGER NOT NULL,
        $columnSchoolId INTEGER NOT NULL,
        $columnImagePath TEXT NOT NULL,
        $columnCachePath TEXT,
        $columnImageAlias TEXT NOT NULL,
        $columnDriveFolderId TEXT,
        $columnDriveId TEXT,
        $columnDescription TEXT,
        $columnUploaded INTEGER NOT NULL DEFAULT 0,
        $columnDeliveryDate INTEGER NOT NULL,
        $columnCreatedAt INTEGER NOT NULL,
        $columnUpdatedAt INTEGER NOT NULL
      );
    ''';
    db = await openDatabase(
      path,
      version: 3,
      onCreate: (Database db, int version) async {
        db.execute(query);
      },
      onUpgrade: _onUpgrade,
    );

    // test();

    return db.isOpen;
  }

  _onUpgrade(Database db, int oldVersion, int newVersion) async {
    String addCachePath =
        '''ALTER TABLE $tableGallery ADD $columnCachePath TEXT;''';
    String addSyncedToPhoto =
        '''ALTER TABLE $tableGallery ADD $columnSyncedToPhotos INTEGER NOT NULL DEFAULT 0;''';

    if (oldVersion <= 1) await db.execute(addCachePath);
    if (oldVersion <= 2) await db.execute(addSyncedToPhoto);
  }

  /// insert data in gallery
  Future<Gallery> insert(Gallery gallery) async {
    DateTime now = DateTime.now();
    gallery.createdAt = now;
    gallery.updatedAt = now;
    gallery.id = await db.insert(tableGallery, gallery.toMap());
    return gallery;
  }

  /// insert multiple gallery
  Future insertAll(List<Gallery> galleries) async {
    DateTime now = DateTime.now();
    // galleries.forEach((gallery) async {
    //   gallery.createdAt = now;
    //   gallery.updatedAt = now;
    //   gallery.id = await db.insert(tableGallery, gallery.toMap());
    // });

    return await db.transaction((txn) async {
      var batch = txn.batch();
      galleries.forEach((gallery) {
        gallery.createdAt = now;
        gallery.updatedAt = now;
        batch.insert(tableGallery, gallery.toMap());
      });
      return await batch.commit();
    });
  }

  /// update list of gallery
  Future updateAll(List<Gallery> galleries) async {
    if (galleries.length <= 0) return null;

    DateTime now = DateTime.now();

    return await db.transaction((txn) async {
      var batch = txn.batch();
      galleries.forEach((gallery) {
        gallery.updatedAt = now;
        batch.update(
          tableGallery,
          gallery.toMap(),
          where: '$columnId = ?',
          whereArgs: [gallery.id],
        );
      });

      return await batch.commit();
    });
  }

  /// update gallery
  Future<Gallery> update(Gallery gallery) async {
    DateTime now = DateTime.now();
    gallery.updatedAt = now;
    await db.update(
      tableGallery,
      gallery.toMap(),
      where: 'id = ?',
      whereArgs: [gallery.id],
    );
    return gallery;
  }

  /// get galley
  Future<List<Gallery>> getGallery(int classId, {int limit = 500}) async {
    List<Gallery> gallery = List<Gallery>();

    List<Map> map = await db.query(
      tableGallery,
      columns: galleryColumns,
      limit: limit,
      orderBy: columnDeliveryDate,
      where: '$columnClassId = ?',
      whereArgs: [classId],
    );

    map.forEach((map) {
      gallery.add(Gallery.fromMap(map));
    });

    return gallery.reversed.toList();
  }

  Future<List<Gallery>> getGalleryForUpload(int classId,
      {int limit = 500}) async {
    List<Gallery> gallery = List<Gallery>();

    List<Map> map = await db.query(
      tableGallery,
      columns: galleryColumns,
      limit: limit,
      orderBy: columnDeliveryDate,
      where: '$columnClassId = ? AND $columnDriveId IS NULL',
      whereArgs: [classId],
    );

    map.forEach((map) {
      gallery.add(Gallery.fromMap(map));
    });

    return gallery.reversed.toList();
  }

  Future<Map<int, List<Gallery>>> getGroupedBySchedules() async {
    List<Map> map = await db.query(
      tableGallery,
      columns: galleryColumns,
      where: '$columnUploaded = 0 AND $columnDriveId IS NOT NULL',
    );

    List<Gallery> galleries = List<Gallery>();
    map.forEach((gallery) => galleries.add(Gallery.fromMap(gallery)));

    Map<int, List<Gallery>> newMap =
        groupBy<Gallery, int>(galleries, (obj) => obj.scheduleId);

    return newMap;
  }

  Future<Map<DateTime, List<Gallery>>> getGroupedByDeliveryDate(int classId,
      {int limit = 500}) async {
    List<Gallery> gallery = List<Gallery>();

    List<Map> map = await db.query(
      tableGallery,
      columns: galleryColumns,
      where: '$columnClassId = ?',
      orderBy: columnDeliveryDate,
      whereArgs: [classId],
    );

    map.forEach((map) {
      gallery.add(Gallery.fromMap(map));
    });

    gallery = gallery.reversed.toList();

    Map<DateTime, List<Gallery>> newMap =
        groupBy<Gallery, DateTime>(gallery, (obj) => obj.deliveryDate);

    return newMap;
  }

  Future<Map<DateTime, List<Gallery>>> getGroupedByThumbnail(int classId,
      {int limit = 500}) async {
    Map<DateTime, List<Gallery>> thumbnails = Map<DateTime, List<Gallery>>();
    thumbnails = await getGroupedByDeliveryDate(classId);
    var keys = thumbnails.keys.toList();

    if (keys.length <= limit) {
      return thumbnails;
    } else {
      for (int i = 3; i < keys.length; i++) {
        thumbnails.remove(keys[i]);
      }
      return thumbnails;
    }
  }

  /// delete gallery
  Future delete(Gallery gallery) async {
    return await db
        .delete(tableGallery, where: 'id = ?', whereArgs: [gallery.id]);
  }

  /// close connection
  Future close() async => db?.close();
}
