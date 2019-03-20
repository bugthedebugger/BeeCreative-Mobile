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
      version: 1,
      onCreate: (Database db, int version) async {
        db.execute(query);
      },
    );

    return db.isOpen;
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
      limit: 500,
      orderBy: columnDeliveryDate,
      where: '$columnClassId = ?',
      whereArgs: [classId],
    );

    map.forEach((map) {
      gallery.add(Gallery.fromMap(map));
    });

    return gallery.reversed.toList();
  }

  Future<Map<DateTime, List<Gallery>>> getGroupedByDeliveryDate(int classId,
      {int limit = 500}) async {
    List<Gallery> gallery = List<Gallery>();

    List<Map> map = await db.query(
      tableGallery,
      columns: galleryColumns,
      where: '$columnClassId = ?',
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

  Future<Map<DateTime, List<Gallery>>> getGroupedByThumbnail(
      int classId) async {
    Map<DateTime, List<Gallery>> thumbnails = Map<DateTime, List<Gallery>>();
    thumbnails = await getGroupedByDeliveryDate(classId);
    var keys = thumbnails.keys.toList();
    if (keys.length <= 3) {
      return thumbnails;
    } else {
      for (int i = 3; i <= keys.length; i++) {
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
