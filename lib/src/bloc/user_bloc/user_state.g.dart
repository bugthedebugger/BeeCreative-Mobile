// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserState extends UserState {
  @override
  final bool isLoading;
  @override
  final User user;
  @override
  final String error;
  @override
  final String idToken;
  @override
  final bool dataStored;

  factory _$UserState([void updates(UserStateBuilder b)]) =>
      (new UserStateBuilder()..update(updates)).build();

  _$UserState._(
      {this.isLoading, this.user, this.error, this.idToken, this.dataStored})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('UserState', 'isLoading');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('UserState', 'user');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('UserState', 'error');
    }
    if (idToken == null) {
      throw new BuiltValueNullFieldError('UserState', 'idToken');
    }
    if (dataStored == null) {
      throw new BuiltValueNullFieldError('UserState', 'dataStored');
    }
  }

  @override
  UserState rebuild(void updates(UserStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStateBuilder toBuilder() => new UserStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserState &&
        isLoading == other.isLoading &&
        user == other.user &&
        error == other.error &&
        idToken == other.idToken &&
        dataStored == other.dataStored;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, isLoading.hashCode), user.hashCode), error.hashCode),
            idToken.hashCode),
        dataStored.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserState')
          ..add('isLoading', isLoading)
          ..add('user', user)
          ..add('error', error)
          ..add('idToken', idToken)
          ..add('dataStored', dataStored))
        .toString();
  }
}

class UserStateBuilder implements Builder<UserState, UserStateBuilder> {
  _$UserState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _idToken;
  String get idToken => _$this._idToken;
  set idToken(String idToken) => _$this._idToken = idToken;

  bool _dataStored;
  bool get dataStored => _$this._dataStored;
  set dataStored(bool dataStored) => _$this._dataStored = dataStored;

  UserStateBuilder();

  UserStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _user = _$v.user?.toBuilder();
      _error = _$v.error;
      _idToken = _$v.idToken;
      _dataStored = _$v.dataStored;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserState;
  }

  @override
  void update(void updates(UserStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserState build() {
    _$UserState _$result;
    try {
      _$result = _$v ??
          new _$UserState._(
              isLoading: isLoading,
              user: user.build(),
              error: error,
              idToken: idToken,
              dataStored: dataStored);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
