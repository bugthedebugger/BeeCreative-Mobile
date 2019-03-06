import 'dart:async';
import 'dart:convert';
import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class AttendanceDataSource {
  http.Client client;

  AttendanceDataSource(this.client);

  Future<AttendanceResponse> submitAttendance(
      Attendance attendance, String token) async {
    final response = await this.client.post(
          ApiURL.attendance,
          body: json.encode(
            attendance.attendanceRecord,
          ),
        );
    return AttendanceResponse.fromJson(response.body);
  }
}
