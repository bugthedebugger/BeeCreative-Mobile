// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailLoginRequested extends EmailLoginRequested {
  @override
  final String email;
  @override
  final String password;

  factory _$EmailLoginRequested(
          [void Function(EmailLoginRequestedBuilder) updates]) =>
      (new EmailLoginRequestedBuilder()..update(updates)).build();

  _$EmailLoginRequested._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('EmailLoginRequested', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('EmailLoginRequested', 'password');
    }
  }

  @override
  EmailLoginRequested rebuild(
          void Function(EmailLoginRequestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailLoginRequestedBuilder toBuilder() =>
      new EmailLoginRequestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailLoginRequested &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmailLoginRequested')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class EmailLoginRequestedBuilder
    implements Builder<EmailLoginRequested, EmailLoginRequestedBuilder> {
  _$EmailLoginRequested _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  EmailLoginRequestedBuilder();

  EmailLoginRequestedBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailLoginRequested other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EmailLoginRequested;
  }

  @override
  void update(void Function(EmailLoginRequestedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmailLoginRequested build() {
    final _$result =
        _$v ?? new _$EmailLoginRequested._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$UserLoginRequested extends UserLoginRequested {
  @override
  final String token;

  factory _$UserLoginRequested(
          [void Function(UserLoginRequestedBuilder) updates]) =>
      (new UserLoginRequestedBuilder()..update(updates)).build();

  _$UserLoginRequested._({this.token}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('UserLoginRequested', 'token');
    }
  }

  @override
  UserLoginRequested rebuild(
          void Function(UserLoginRequestedBuilder) updates) =>
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
  void update(void Function(UserLoginRequestedBuilder) updates) {
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
          [void Function(GoogleUserLoginRequestBuilder) updates]) =>
      (new GoogleUserLoginRequestBuilder()..update(updates)).build();

  _$GoogleUserLoginRequest._() : super._();

  @override
  GoogleUserLoginRequest rebuild(
          void Function(GoogleUserLoginRequestBuilder) updates) =>
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
  void update(void Function(GoogleUserLoginRequestBuilder) updates) {
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
          [void Function(StoreUserToSharedPreferencesBuilder) updates]) =>
      (new StoreUserToSharedPreferencesBuilder()..update(updates)).build();

  _$StoreUserToSharedPreferences._() : super._();

  @override
  StoreUserToSharedPreferences rebuild(
          void Function(StoreUserToSharedPreferencesBuilder) updates) =>
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
  void update(void Function(StoreUserToSharedPreferencesBuilder) updates) {
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
  factory _$UserLogoutRequested(
          [void Function(UserLogoutRequestedBuilder) updates]) =>
      (new UserLogoutRequestedBuilder()..update(updates)).build();

  _$UserLogoutRequested._() : super._();

  @override
  UserLogoutRequested rebuild(
          void Function(UserLogoutRequestedBuilder) updates) =>
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
  void update(void Function(UserLogoutRequestedBuilder) updates) {
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
          [void Function(UserStoredSuccessfullyBuilder) updates]) =>
      (new UserStoredSuccessfullyBuilder()..update(updates)).build();

  _$UserStoredSuccessfully._() : super._();

  @override
  UserStoredSuccessfully rebuild(
          void Function(UserStoredSuccessfullyBuilder) updates) =>
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
  void update(void Function(UserStoredSuccessfullyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserStoredSuccessfully build() {
    final _$result = _$v ?? new _$UserStoredSuccessfully._();
    replace(_$result);
    return _$result;
  }
}

class _$UserErrorEvent extends UserErrorEvent {
  @override
  final String message;

  factory _$UserErrorEvent([void Function(UserErrorEventBuilder) updates]) =>
      (new UserErrorEventBuilder()..update(updates)).build();

  _$UserErrorEvent._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('UserErrorEvent', 'message');
    }
  }

  @override
  UserErrorEvent rebuild(void Function(UserErrorEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserErrorEventBuilder toBuilder() =>
      new UserErrorEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserErrorEvent && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserErrorEvent')
          ..add('message', message))
        .toString();
  }
}

class UserErrorEventBuilder
    implements Builder<UserErrorEvent, UserErrorEventBuilder> {
  _$UserErrorEvent _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UserErrorEventBuilder();

  UserErrorEventBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserErrorEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserErrorEvent;
  }

  @override
  void update(void Function(UserErrorEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserErrorEvent build() {
    final _$result = _$v ?? new _$UserErrorEvent._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$UserLoginSuccess extends UserLoginSuccess {
  factory _$UserLoginSuccess(
          [void Function(UserLoginSuccessBuilder) updates]) =>
      (new UserLoginSuccessBuilder()..update(updates)).build();

  _$UserLoginSuccess._() : super._();

  @override
  UserLoginSuccess rebuild(void Function(UserLoginSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoginSuccessBuilder toBuilder() =>
      new UserLoginSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLoginSuccess;
  }

  @override
  int get hashCode {
    return 157670585;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UserLoginSuccess').toString();
  }
}

class UserLoginSuccessBuilder
    implements Builder<UserLoginSuccess, UserLoginSuccessBuilder> {
  _$UserLoginSuccess _$v;

  UserLoginSuccessBuilder();

  @override
  void replace(UserLoginSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserLoginSuccess;
  }

  @override
  void update(void Function(UserLoginSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLoginSuccess build() {
    final _$result = _$v ?? new _$UserLoginSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$UserLoggedOut extends UserLoggedOut {
  factory _$UserLoggedOut([void Function(UserLoggedOutBuilder) updates]) =>
      (new UserLoggedOutBuilder()..update(updates)).build();

  _$UserLoggedOut._() : super._();

  @override
  UserLoggedOut rebuild(void Function(UserLoggedOutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoggedOutBuilder toBuilder() => new UserLoggedOutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLoggedOut;
  }

  @override
  int get hashCode {
    return 853500466;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UserLoggedOut').toString();
  }
}

class UserLoggedOutBuilder
    implements Builder<UserLoggedOut, UserLoggedOutBuilder> {
  _$UserLoggedOut _$v;

  UserLoggedOutBuilder();

  @override
  void replace(UserLoggedOut other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserLoggedOut;
  }

  @override
  void update(void Function(UserLoggedOutBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLoggedOut build() {
    final _$result = _$v ?? new _$UserLoggedOut._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
