library delivery_report;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_report.g.dart';

abstract class DeliveryReport
    implements Built<DeliveryReport, DeliveryReportBuilder> {
  @nullable
  int get rating;
  @nullable
  bool get delivered;

  DeliveryReport._();

  factory DeliveryReport([updates(DeliveryReportBuilder b)]) = _$DeliveryReport;

  String toJson() {
    return json
        .encode(serializers.serializeWith(DeliveryReport.serializer, this));
  }

  static DeliveryReport fromJson(String jsonString) {
    return serializers.deserializeWith(
        DeliveryReport.serializer, json.decode(jsonString));
  }

  static Serializer<DeliveryReport> get serializer =>
      _$deliveryReportSerializer;
}
