library serializers;

import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:BeeCreative/src/data/models/google_drive_folder_model/drive_folder.dart';
import 'package:BeeCreative/src/data/models/google_drive_folder_model/google_drive.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/models/socialmedia/photo_data.dart';
import 'package:BeeCreative/src/data/models/socialmedia/social_media.dart';
import 'package:BeeCreative/src/data/models/student/student.dart';
import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  User,
  UserData,
  Schedule,
  ScheduleResponseData,
  Attendee,
  AttendeeData,
  Student,
  ScheduleResponse,
  BuiltList,
  DeliveryReportResponse,
  DeliveryReport,
  SchedulesPagination,
  AttendanceRecord,
  AttendanceResponse,
  SocialMedia,
  PhotoData,
  DriveFolder,
  GoogleDrive,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
