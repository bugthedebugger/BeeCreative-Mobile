import 'package:BeeCreative/src/data/models/user/user_error.dart';
import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:BeeCreative/src/data/network/user_data_source.dart';

class UserRepository {
  UserDataSource _userDataSource;

  UserRepository(this._userDataSource);

  Future<User> requestLogin(String token) async {
    try {
      final user = await _userDataSource.requestLogin(token: token);
      return user;
    } catch (e) {
      throw UserError(e.message);
    }
  }
}

class NoUserException implements Exception {
  final message = "No user";
}
