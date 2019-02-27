library delivery_report_response;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_report_response.g.dart';

abstract class DeliveryReportResponse
    implements Built<DeliveryReportResponse, DeliveryReportResponseBuilder> {
  @nullable
  String get data;
  @nullable
  int get code;
  @nullable
  String get error;

  DeliveryReportResponse._();

  factory DeliveryReportResponse([updates(DeliveryReportResponseBuilder b)]) =
      _$DeliveryReportResponse;

  String toJson() {
    return json.encode(
        serializers.serializeWith(DeliveryReportResponse.serializer, this));
  }

  static DeliveryReportResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DeliveryReportResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DeliveryReportResponse> get serializer =>
      _$deliveryReportResponseSerializer;
}
