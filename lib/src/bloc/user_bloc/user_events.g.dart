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

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
