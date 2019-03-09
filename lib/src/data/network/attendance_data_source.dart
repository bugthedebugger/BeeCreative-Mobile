import 'dart:async';
import 'dart:convert';
import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;

class AttendanceDataSource {
  http.Client client;

  AttendanceDataSource(this.client);

  Future<AttendanceResponse> submitAttendance(
      Attendance attendance, String token) async {
    final _token = 'Bearer $token';
    List responseBody = List();

    attendance.attendanceRecord.forEach((record) {
      responseBody.add({
        'student_id': record.student.studentId,
        'schedule_id': record.schedule.scheduleId,
        'attendance': record.attendance,
      });
    });

    final response = await this.client.post(
          ApiURL.attendance,
          headers: {
            'Authorization': _token,
            'Content-Type': 'application/json'
          },
          body: json.encode(
            responseBody,
          ),
        );
    return AttendanceResponse.fromJson(response.body);
  }
}
