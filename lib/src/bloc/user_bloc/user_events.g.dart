// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLoginRequested extends UserLoginRequested {
  @override
  final String token;

  factory _$UserLoginRequested([void updates(UserLoginRequestedBuilder b)]) =>
      (new UserLoginRequestedBuilder()..update(updates)).build();

  _$UserLoginRequested._({this.token}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('UserLoginRequested', 'token');
    }
  }

  @override
  UserLoginRequested rebuild(void updates(UserLoginRequestedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoginRequestedBuilder toBuilder() =>
      new UserLoginRequestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLoginRequested && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserLoginRequested')
          ..add('token', token))
        .toString();
  }
}

class UserLoginRequestedBuilder
    implements Builder<UserLoginRequested, UserLoginRequestedBuilder> {
  _$UserLoginRequested _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  UserLoginRequestedBuilder();

  UserLoginRequestedBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLoginRequested other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserLoginRequested;
  }

  @override
  void update(void updates(UserLoginRequestedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLoginRequested build() {
    final _$result = _$v ?? new _$UserLoginRequested._(token: token);
    replace(_$result);
    return _$result;
  }
}

class _$GoogleUserLoginRequest extends GoogleUserLoginRequest {
  factory _$GoogleUserLoginRequest(
          [void updates(GoogleUserLoginRequestBuilder b)]) =>
      (new GoogleUserLoginRequestBuilder()..update(updates)).build();

  _$GoogleUserLoginRequest._() : super._();

  @override
  GoogleUserLoginRequest rebuild(
          void updates(GoogleUserLoginRequestBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleUserLoginRequestBuilder toBuilder() =>
      new GoogleUserLoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleUserLoginRequest;
  }

  @override
  int get hashCode {
    return 431344760;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GoogleUserLoginRequest').toString();
  }
}

class GoogleUserLoginRequestBuilder
    implements Builder<GoogleUserLoginRequest, GoogleUserLoginRequestBuilder> {
  _$GoogleUserLoginRequest _$v;

  GoogleUserLoginRequestBuilder();

  @override
  void replace(GoogleUserLoginRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GoogleUserLoginRequest;
  }

  @override
  void update(void updates(GoogleUserLoginRequestBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleUserLoginRequest build() {
    final _$result = _$v ?? new _$GoogleUserLoginRequest._();
    replace(_$result);
    return _$result;
  }
}

class _$StoreUserToSharedPreferences extends StoreUserToSharedPreferences {
  factory _$StoreUserToSharedPreferences(
          [void updates(StoreUserToSharedPreferencesBuilder b)]) =>
      (new StoreUserToSharedPreferencesBuilder()..update(updates)).build();

  _$StoreUserToSharedPreferences._() : super._();

  @override
  StoreUserToSharedPreferences rebuild(
          void updates(StoreUserToSharedPreferencesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreUserToSharedPreferencesBuilder toBuilder() =>
      new StoreUserToSharedPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreUserToSharedPreferences;
  }

  @override
  int get hashCode {
    return 768213533;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StoreUserToSharedPreferences')
        .toString();
  }
}

class StoreUserToSharedPreferencesBuilder
    implements
        Builder<StoreUserToSharedPreferences,
            StoreUserToSharedPreferencesBuilder> {
  _$StoreUserToSharedPreferences _$v;

  StoreUserToSharedPreferencesBuilder();

  @override
  void replace(StoreUserToSharedPreferences other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StoreUserToSharedPreferences;
  }

  @override
  void update(void updates(StoreUserToSharedPreferencesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreUserToSharedPreferences build() {
    final _$result = _$v ?? new _$StoreUserToSharedPreferences._();
    replace(_$result);
    return _$result;
  }
}

class _$UserLogoutRequested extends UserLogoutRequested {
  factory _$UserLogoutRequested([void updates(UserLogoutRequestedBuilder b)]) =>
      (new UserLogoutRequestedBuilder()..update(updates)).build();

  _$UserLogoutRequested._() : super._();

  @override
  UserLogoutRequested rebuild(void updates(UserLogoutRequestedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLogoutRequestedBuilder toBuilder() =>
      new UserLogoutRequestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLogoutRequested;
  }

  @override
  int get hashCode {
    return 50014898;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UserLogoutRequested').toString();
  }
}

class UserLogoutRequestedBuilder
    implements Builder<UserLogoutRequested, UserLogoutRequestedBuilder> {
  _$UserLogoutRequested _$v;

  UserLogoutRequestedBuilder();

  @override
  void replace(UserLogoutRequested other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserLogoutRequested;
  }

  @override
  void update(void updates(UserLogoutRequestedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLogoutRequested build() {
    final _$result = _$v ?? new _$UserLogoutRequested._();
    replace(_$result);
    return _$result;
  }
}

class _$UserStoredSuccessfully extends UserStoredSuccessfully {
  factory _$UserStoredSuccessfully(
          [void updates(UserStoredSuccessfullyBuilder b)]) =>
      (new UserStoredSuccessfullyBuilder()..update(updates)).build();

  _$UserStoredSuccessfully._() : super._();

  @override
  UserStoredSuccessfully rebuild(
          void updates(UserStoredSuccessfullyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStoredSuccessfullyBuilder toBuilder() =>
      new UserStoredSuccessfullyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStoredSuccessfully;
  }

  @override
  int get hashCode {
    return 1063521229;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UserStoredSuccessfully').toString();
  }
}

class UserStoredSuccessfullyBuilder
    implements Builder<UserStoredSuccessfully, UserStoredSuccessfullyBuilder> {
  _$UserStoredSuccessfully _$v;

  UserStoredSuccessfullyBuilder();

  @override
  void replace(UserStoredSuccessfully other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserStoredSuccessfully;
  }

  @override
  void update(void updates(UserStoredSuccessfullyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserStoredSuccessfully build() {
    final _$result = _$v ?? new _$UserStoredSuccessfully._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
