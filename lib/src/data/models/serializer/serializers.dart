library serializers;

import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
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
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
