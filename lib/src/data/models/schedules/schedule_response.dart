library schedule_response;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/schedules/attendee.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_pagination.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_response_data.dart';
import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_response.g.dart';

abstract class ScheduleResponse
    implements Built<ScheduleResponse, ScheduleResponseBuilder> {
  @nullable
  BuiltList<ScheduleResponseData> get data;
  @nullable
  BuiltList<Schedule> get schedule;
  @nullable
  Attendee get attendee;
  @nullable
  SchedulesPagination get pagination;

  ScheduleResponse._();

  factory ScheduleResponse([updates(ScheduleResponseBuilder b)]) =
      _$ScheduleResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ScheduleResponse.serializer, this));
  }

  static ScheduleResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ScheduleResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ScheduleResponse> get serializer =>
      _$scheduleResponseSerializer;
}
