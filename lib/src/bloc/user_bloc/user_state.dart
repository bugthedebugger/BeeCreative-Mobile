library user_state;

import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:built_value/built_value.dart';

part 'user_state.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  bool get isLoading;
  User get user;
  String get error;

  bool get isInitial => !isLoading && user == null && error == '';
  bool get isSuccessful => !isLoading && user != null && error == '';

  UserState._();

  factory UserState([updates(UserStateBuilder b)]) = _$UserState;

  factory UserState.initial() {
    return UserState((b) => b
      ..isLoading = false
      ..user.replace(null)
      ..error = '');
  }

  factory UserState.loading() {
    return UserState((b) => b
      ..isLoading = true
      ..user.replace(null)
      ..error = '');
  }

  factory UserState.failure(String error) {
    return UserState((b) => b
      ..isLoading = false
      ..user.replace(null)
      ..error = error);
  }

  factory UserState.success(User user) {
    return UserState((b) => b
      ..isLoading = false
      ..user.replace(user)
      ..error = '');
  }
}
