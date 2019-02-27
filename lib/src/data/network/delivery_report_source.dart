import 'dart:convert';

import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class DeliveryReportDataSource {
  http.Client client;

  DeliveryReportDataSource(this.client);

  Future<DeliveryReportResponse> sendDeliveryReport(Schedule schedule,
      {String comment, int rating, @required bool delivered}) async {
    final url = ApiURL.deliveryReport;
    final encodedUrl = Uri.encodeFull(url);

    final response = await client.post(
      encodedUrl,
      headers: {
        'Content-Type': 'application/json',
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

    print(response.body);

    return DeliveryReportResponse.fromJson(response.body);
  }
}
