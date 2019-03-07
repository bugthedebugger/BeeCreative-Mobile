import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/attendance/attendance_model.dart';
import 'package:BeeCreative/src/data/network/attendance_data_source.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'package:meta/meta.dart';

class AttendanceRepository {
  AttendanceDataSource _dataSource;
  AttendanceRepository(this._dataSource);

  Future<AttendanceResponse> submitAttendance(
      {@required Attendance attendance, @required String token}) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    final response = await _dataSource.submitAttendance(attendance, token);
    if (response.code == 200)
      return response;
    else
      throw AttendanceSubmissionException();
  }
}
