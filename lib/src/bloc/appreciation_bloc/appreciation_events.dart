library appreciation_events;

import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:built_value/built_value.dart';

part 'appreciation_events.g.dart';

abstract class AppreciationEvents {}

abstract class GetUsers extends AppreciationEvents
    implements Built<GetUsers, GetUsersBuilder> {
  GetUsers._();

  factory GetUsers([updates(GetUsersBuilder b)]) = _$GetUsers;
}

abstract class GetUsersSuccess extends AppreciationEvents
    implements Built<GetUsersSuccess, GetUsersSuccessBuilder> {
  UserList get users;

  GetUsersSuccess._();

  factory GetUsersSuccess([updates(GetUsersSuccessBuilder b)]) =
      _$GetUsersSuccess;
}

abstract class AppreciationError extends AppreciationEvents
    implements Built<AppreciationError, AppreciationErrorBuilder> {
  String get message;

  AppreciationError._();

  factory AppreciationError([updates(AppreciationErrorBuilder b)]) =
      _$AppreciationError;
}

abstract class AppreciationSuccess extends AppreciationEvents
    implements Built<AppreciationSuccess, AppreciationSuccessBuilder> {
  AppreciationSuccess._();

  factory AppreciationSuccess([updates(AppreciationSuccessBuilder b)]) =
      _$AppreciationSuccess;
}

abstract class AppreciateUser extends AppreciationEvents
    implements Built<AppreciateUser, AppreciateUserBuilder> {
  String get title;
  String get message;
  User get user;
  int get amount;

  AppreciateUser._();

  factory AppreciateUser([updates(AppreciateUserBuilder b)]) = _$AppreciateUser;
}
