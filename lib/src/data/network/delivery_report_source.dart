import 'dart:convert';

import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:async';

class DeliveryReportDataSource {
  http.Client client;

  DeliveryReportDataSource(this.client);

  Future<DeliveryReportResponse> sendDeliveryReport({
    @required Schedule schedule,
    @required String token,
    String comment,
    int rating,
    @required bool delivered,
  }) async {
    final url = ApiURL.deliveryReport;
    final encodedUrl = Uri.encodeFull(url);

    final response = await client.post(
      encodedUrl,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
      body: json.encode([
        {
          'schedule_id': schedule.scheduleId,
          'comment': comment,
          'rating': rating,
          'delivered': delivered,
        }
      ]),
    );

    return DeliveryReportResponse.fromJson(response.body);
  }
}
