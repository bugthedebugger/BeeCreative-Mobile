import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/delivery_report_source.dart';
import 'package:meta/meta.dart';

class DeliveryReportRepository {
  DeliveryReportDataSource _dataSource;

  DeliveryReportRepository(this._dataSource);

  Future<DeliveryReportResponse> sendDeliveryReport({
    @required Schedule schedule,
    @required String token,
    @required bool delivered,
    int rating,
    String comment,
  }) async {
    final response = await _dataSource.sendDeliveryReport(
      schedule: schedule,
      token: token,
      delivered: delivered,
      rating: rating,
      comment: comment,
    );
    if (response == null)
      throw DeliveryReportNotSubmitted();
    else
      return response;
  }
}

class DeliveryReportNotSubmitted implements Exception {
  String message = "Failed to submit delivery report";
}
