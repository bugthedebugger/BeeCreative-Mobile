library schedule_events;

import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:built_value/built_value.dart';

part 'schedule_events.g.dart';

abstract class ScheduleEvents {}

abstract class GetScheduleFromNetwork extends ScheduleEvents
    implements Built<GetScheduleFromNetwork, GetScheduleFromNetworkBuilder> {
  String get token;

  GetScheduleFromNetwork._();

  factory GetScheduleFromNetwork([updates(GetScheduleFromNetworkBuilder b)]) =
      _$GetScheduleFromNetwork;
}

abstract class GetScheduleFromStorage extends ScheduleEvents
    implements Built<GetScheduleFromStorage, GetScheduleFromStorageBuilder> {
  String get token;

  GetScheduleFromStorage._();

  factory GetScheduleFromStorage([updates(GetScheduleFromStorageBuilder b)]) =
      _$GetScheduleFromStorage;
}

abstract class ScheduleExpired
    implements Built<ScheduleExpired, ScheduleExpiredBuilder> {
  DateTime get date;

  ScheduleExpired._();

  factory ScheduleExpired([updates(ScheduleExpiredBuilder b)]) =
      _$ScheduleExpired;
}

abstract class SchedulesLoading extends ScheduleEvents
    implements Built<SchedulesLoading, SchedulesLoadingBuilder> {
  // fields go here

  SchedulesLoading._();

  factory SchedulesLoading([updates(SchedulesLoadingBuilder b)]) =
      _$SchedulesLoading;
}

abstract class ScheduleLoadedSuccessfully extends ScheduleEvents
    implements
        Built<ScheduleLoadedSuccessfully, ScheduleLoadedSuccessfullyBuilder> {
  ScheduleResponse get scheduleResponse;

  ScheduleLoadedSuccessfully._();

  factory ScheduleLoadedSuccessfully(
          [updates(ScheduleLoadedSuccessfullyBuilder b)]) =
      _$ScheduleLoadedSuccessfully;
}

abstract class ReloadSchedulesFromNetwork extends ScheduleEvents
    implements
        Built<ReloadSchedulesFromNetwork, ReloadSchedulesFromNetworkBuilder> {
  String get token;

  ReloadSchedulesFromNetwork._();

  factory ReloadSchedulesFromNetwork(
          [updates(ReloadSchedulesFromNetworkBuilder b)]) =
      _$ReloadSchedulesFromNetwork;
}

abstract class SchedulesError extends ScheduleEvents
    implements Built<SchedulesError, SchedulesErrorBuilder> {
  String get message;

  SchedulesError._();

  factory SchedulesError([updates(SchedulesErrorBuilder b)]) = _$SchedulesError;
}

abstract class NoSchedules extends ScheduleEvents
    implements Built<NoSchedules, NoSchedulesBuilder> {
  // fields go here

  NoSchedules._();

  factory NoSchedules([updates(NoSchedulesBuilder b)]) = _$NoSchedules;
}

abstract class SchedulesReloading extends ScheduleEvents
    implements Built<SchedulesReloading, SchedulesReloadingBuilder> {
  // fields go here

  SchedulesReloading._();

  factory SchedulesReloading([updates(SchedulesReloadingBuilder b)]) =
      _$SchedulesReloading;
}
