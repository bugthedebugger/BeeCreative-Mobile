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
  String get token;
  bool get delivered;
  int get rating;
  ClassDeliveredEvent._();

  factory ClassDeliveredEvent([updates(ClassDeliveredEventBuilder b)]) =
      _$ClassDeliveredEvent;
}

abstract class ClassCancelledEvent extends DeliveryReportEvent
    implements Built<ClassCancelledEvent, ClassCancelledEventBuilder> {
  Schedule get schedule;
  String get token;
  bool get delivered;
  String get comment;

  ClassCancelledEvent._();

  factory ClassCancelledEvent([updates(ClassCancelledEventBuilder b)]) =
      _$ClassCancelledEvent;
}

abstract class SumbittingReportEvent
    implements Built<SumbittingReportEvent, SumbittingReportEventBuilder> {
  // fields go here

  SumbittingReportEvent._();

  factory SumbittingReportEvent([updates(SumbittingReportEventBuilder b)]) =
      _$SumbittingReportEvent;
}

abstract class DeliveryReportError extends DeliveryReportEvent
    implements Built<DeliveryReportError, DeliveryReportErrorBuilder> {
  String get message;
  DeliveryReportError._();

  factory DeliveryReportError([updates(DeliveryReportErrorBuilder b)]) =
      _$DeliveryReportError;
}

abstract class DeliveryReportSubmitted extends DeliveryReportEvent
    implements Built<DeliveryReportSubmitted, DeliveryReportSubmittedBuilder> {
  // fields go here

  DeliveryReportSubmitted._();

  factory DeliveryReportSubmitted([updates(DeliveryReportSubmittedBuilder b)]) =
      _$DeliveryReportSubmitted;
}

abstract class SubmittingReport extends DeliveryReportEvent
    implements Built<SubmittingReport, SubmittingReportBuilder> {
  SubmittingReport._();

  factory SubmittingReport([updates(SubmittingReportBuilder b)]) =
      _$SubmittingReport;
}
