import 'package:BeeCreative/src/data/exceptions/no_connection_exception.dart';
import 'package:BeeCreative/src/data/models/user/user_error.dart';
import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:BeeCreative/src/data/network/user_data_source.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'dart:async';

class UserRepository {
  UserDataSource _userDataSource;

  UserRepository(this._userDataSource);

  Future<User> requestLogin(String token) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    try {
      final user = await _userDataSource.requestLogin(token: token);
      return user;
    } catch (e) {
      throw UserError(e.message);
    }
  }
}
