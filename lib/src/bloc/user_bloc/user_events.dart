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

abstract class GoogleUserLoginRequest extends UserEvent
    implements Built<GoogleUserLoginRequest, GoogleUserLoginRequestBuilder> {
  GoogleUserLoginRequest._();

  factory GoogleUserLoginRequest([updates(GoogleUserLoginRequestBuilder b)]) =
      _$GoogleUserLoginRequest;
}

abstract class StoreUserToSharedPreferences extends UserEvent
    implements
        Built<StoreUserToSharedPreferences,
            StoreUserToSharedPreferencesBuilder> {
  StoreUserToSharedPreferences._();

  factory StoreUserToSharedPreferences(
          [updates(StoreUserToSharedPreferencesBuilder b)]) =
      _$StoreUserToSharedPreferences;
}

abstract class UserStoredSuccessfully extends UserEvent
    implements Built<UserStoredSuccessfully, UserStoredSuccessfullyBuilder> {
  // fields go here

  UserStoredSuccessfully._();

  factory UserStoredSuccessfully([updates(UserStoredSuccessfullyBuilder b)]) =
      _$UserStoredSuccessfully;
}
