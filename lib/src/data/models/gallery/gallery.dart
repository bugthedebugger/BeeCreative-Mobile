import 'dart:core';
import 'gallery_wirename.dart';

class Gallery {
  int id;
  int scheduleId;
  int classId;
  int schoolId;
  String imagePath;
  String imageAlias;
  String driveFolderId;
  String driveId;
  String description;
  bool uploaded;
  DateTime deliveryDate;
  DateTime createdAt;
  DateTime updatedAt;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnScheduleId: scheduleId,
      columnClassId: classId,
      columnSchoolId: schoolId,
      columnImagePath: imagePath,
      columnImageAlias: imageAlias,
      columnDriveFolderId: driveFolderId,
      columnDriveId: driveId,
      columnDescription: description,
      columnUploaded: uploaded ? 1 : 0,
      columnDeliveryDate: deliveryDate?.millisecondsSinceEpoch,
      columnCreatedAt: createdAt?.millisecondsSinceEpoch,
      columnUpdatedAt: updatedAt?.millisecondsSinceEpoch,
    };

    return map;
  }

  Gallery();

  Gallery.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    classId = map[columnClassId];
    schoolId = map[columnSchoolId];
    scheduleId = map[columnScheduleId];
    imagePath = map[columnImagePath];
    imageAlias = map[columnImageAlias];
    driveFolderId = map[columnDriveFolderId];
    driveId = map[columnDriveId];
    description = map[columnDescription];
    uploaded = map[columnUploaded] == 1;
    deliveryDate = DateTime.fromMillisecondsSinceEpoch(map[columnDeliveryDate]);
    createdAt = DateTime.fromMillisecondsSinceEpoch(map[columnCreatedAt]);
    updatedAt = DateTime.fromMillisecondsSinceEpoch(map[columnUpdatedAt]);
  }
}
