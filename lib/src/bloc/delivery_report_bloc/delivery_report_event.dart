library delivery_report_event;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/schedules/schedule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_report_event.g.dart';

abstract class DeliveryReportEvent {}

abstract class ClassDeliveredEvent extends DeliveryReportEvent
    implements Built<ClassDeliveredEvent, ClassDeliveredEventBuilder> {
  Schedule get schedule;
  int get rating;
  bool get delivered;

  ClassDeliveredEvent._();

  factory ClassDeliveredEvent([updates(ClassDeliveredEventBuilder b)]) =
      _$ClassDeliveredEvent;
}

abstract class ClassCancelledEvent extends DeliveryReportEvent
    implements Built<ClassCancelledEvent, ClassCancelledEventBuilder> {
  Schedule get schedule;
  String get comment;
  bool get delivered;

  ClassCancelledEvent._();

  factory ClassCancelledEvent([updates(ClassCancelledEventBuilder b)]) =
      _$ClassCancelledEvent;
}
