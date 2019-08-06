library delivery_report_state;

import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:built_value/built_value.dart';

part 'delivery_report_state.g.dart';

abstract class DeliveryReportState
    implements Built<DeliveryReportState, DeliveryReportStateBuilder> {
  bool get isLoading;
  String get error;
  DeliveryReportResponse get deliveryReportResponse;

  DeliveryReportState._();

  factory DeliveryReportState([updates(DeliveryReportStateBuilder b)]) =
      _$DeliveryReportState;

  factory DeliveryReportState.initial() {
    return DeliveryReportState((b) => b
      ..isLoading = false
      ..error = ''
      ..deliveryReportResponse.replace(DeliveryReportResponse()));
  }

  factory DeliveryReportState.loading() {
    return DeliveryReportState((b) => b
      ..isLoading = true
      ..error = ''
      ..deliveryReportResponse.replace(DeliveryReportResponse()));
  }

  factory DeliveryReportState.success(DeliveryReportResponse response) {
    return DeliveryReportState((b) => b
      ..isLoading = false
      ..error = ''
      ..deliveryReportResponse.replace(response));
  }

  factory DeliveryReportState.failure(DeliveryReportResponse response) {
    return DeliveryReportState((b) => b
      ..isLoading = false
      ..error = response.data
      ..deliveryReportResponse.replace(response));
  }
}
