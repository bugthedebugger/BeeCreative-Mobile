library user_state;

import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:built_value/built_value.dart';

part 'user_state.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  bool get isLoading;
  User get user;
  String get error;
  String get idToken;
  bool get dataStored;

  bool get isInitial => !isLoading && user == null && error == '';
  bool get isSuccessful => !isLoading && user != null && error == '';

  UserState._();

  factory UserState([updates(UserStateBuilder b)]) = _$UserState;

  factory UserState.initial() {
    return UserState((b) => b
      ..isLoading = false
      ..dataStored = false
      ..user.replace(User())
      ..error = ''
      ..idToken = '');
  }

  factory UserState.loading() {
    return UserState((b) => b
      ..isLoading = true
      ..dataStored = false
      ..user.replace(User())
      ..error = ''
      ..idToken = '');
  }

  factory UserState.failure(String error) {
    return UserState((b) => b
      ..isLoading = false
      ..dataStored = false
      ..user.replace(User())
      ..error = error
      ..idToken = '');
  }

  factory UserState.success(User user) {
    return UserState((b) => b
      ..isLoading = false
      ..dataStored = false
      ..user.replace(user)
      ..error = ''
      ..idToken = '');
  }

  factory UserState.googlLogin(String idToken) {
    return UserState((b) => b
      ..isLoading = false
      ..dataStored = false
      ..user.replace(User())
      ..error = ''
      ..idToken = idToken);
  }

  factory UserState.dataStore(User user, String idToken) {
    return UserState((b) => b
      ..isLoading = false
      ..dataStored = true
      ..user.replace(user)
      ..error = ''
      ..idToken = idToken);
  }
}
