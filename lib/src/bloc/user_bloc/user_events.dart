library user_events;

import 'package:built_value/built_value.dart';

part 'user_events.g.dart';

abstract class UserEvent {}

abstract class UserLoginRequested extends UserEvent
    implements Built<UserLoginRequested, UserLoginRequestedBuilder> {
  String get token;

  UserLoginRequested._();

  factory UserLoginRequested([updates(UserLoginRequestedBuilder b)]) =
      _$UserLoginRequested;
}
