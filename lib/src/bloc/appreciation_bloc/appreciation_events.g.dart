// GENERATED CODE - DO NOT MODIFY BY HAND

part of appreciation_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsers extends GetUsers {
  factory _$GetUsers([void Function(GetUsersBuilder) updates]) =>
      (new GetUsersBuilder()..update(updates)).build();

  _$GetUsers._() : super._();

  @override
  GetUsers rebuild(void Function(GetUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersBuilder toBuilder() => new GetUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsers;
  }

  @override
  int get hashCode {
    return 699968448;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetUsers').toString();
  }
}

class GetUsersBuilder implements Builder<GetUsers, GetUsersBuilder> {
  _$GetUsers _$v;

  GetUsersBuilder();

  @override
  void replace(GetUsers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUsers;
  }

  @override
  void update(void Function(GetUsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsers build() {
    final _$result = _$v ?? new _$GetUsers._();
    replace(_$result);
    return _$result;
  }
}

class _$GetUsersSuccess extends GetUsersSuccess {
  @override
  final UserList users;

  factory _$GetUsersSuccess([void Function(GetUsersSuccessBuilder) updates]) =>
      (new GetUsersSuccessBuilder()..update(updates)).build();

  _$GetUsersSuccess._({this.users}) : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('GetUsersSuccess', 'users');
    }
  }

  @override
  GetUsersSuccess rebuild(void Function(GetUsersSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersSuccessBuilder toBuilder() =>
      new GetUsersSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsersSuccess && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUsersSuccess')..add('users', users))
        .toString();
  }
}

class GetUsersSuccessBuilder
    implements Builder<GetUsersSuccess, GetUsersSuccessBuilder> {
  _$GetUsersSuccess _$v;

  UserListBuilder _users;
  UserListBuilder get users => _$this._users ??= new UserListBuilder();
  set users(UserListBuilder users) => _$this._users = users;

  GetUsersSuccessBuilder();

  GetUsersSuccessBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUsersSuccess;
  }

  @override
  void update(void Function(GetUsersSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsersSuccess build() {
    _$GetUsersSuccess _$result;
    try {
      _$result = _$v ?? new _$GetUsersSuccess._(users: users.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUsersSuccess', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppreciationError extends AppreciationError {
  @override
  final String message;

  factory _$AppreciationError(
          [void Function(AppreciationErrorBuilder) updates]) =>
      (new AppreciationErrorBuilder()..update(updates)).build();

  _$AppreciationError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('AppreciationError', 'message');
    }
  }

  @override
  AppreciationError rebuild(void Function(AppreciationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppreciationErrorBuilder toBuilder() =>
      new AppreciationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppreciationError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppreciationError')
          ..add('message', message))
        .toString();
  }
}

class AppreciationErrorBuilder
    implements Builder<AppreciationError, AppreciationErrorBuilder> {
  _$AppreciationError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  AppreciationErrorBuilder();

  AppreciationErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppreciationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppreciationError;
  }

  @override
  void update(void Function(AppreciationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppreciationError build() {
    final _$result = _$v ?? new _$AppreciationError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$AppreciationSuccess extends AppreciationSuccess {
  factory _$AppreciationSuccess(
          [void Function(AppreciationSuccessBuilder) updates]) =>
      (new AppreciationSuccessBuilder()..update(updates)).build();

  _$AppreciationSuccess._() : super._();

  @override
  AppreciationSuccess rebuild(
          void Function(AppreciationSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppreciationSuccessBuilder toBuilder() =>
      new AppreciationSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppreciationSuccess;
  }

  @override
  int get hashCode {
    return 872617055;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('AppreciationSuccess').toString();
  }
}

class AppreciationSuccessBuilder
    implements Builder<AppreciationSuccess, AppreciationSuccessBuilder> {
  _$AppreciationSuccess _$v;

  AppreciationSuccessBuilder();

  @override
  void replace(AppreciationSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppreciationSuccess;
  }

  @override
  void update(void Function(AppreciationSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppreciationSuccess build() {
    final _$result = _$v ?? new _$AppreciationSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$AppreciateUser extends AppreciateUser {
  @override
  final String title;
  @override
  final String message;
  @override
  final User user;
  @override
  final int amount;

  factory _$AppreciateUser([void Function(AppreciateUserBuilder) updates]) =>
      (new AppreciateUserBuilder()..update(updates)).build();

  _$AppreciateUser._({this.title, this.message, this.user, this.amount})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('AppreciateUser', 'title');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('AppreciateUser', 'message');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('AppreciateUser', 'user');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('AppreciateUser', 'amount');
    }
  }

  @override
  AppreciateUser rebuild(void Function(AppreciateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppreciateUserBuilder toBuilder() =>
      new AppreciateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppreciateUser &&
        title == other.title &&
        message == other.message &&
        user == other.user &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), message.hashCode), user.hashCode),
        amount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppreciateUser')
          ..add('title', title)
          ..add('message', message)
          ..add('user', user)
          ..add('amount', amount))
        .toString();
  }
}

class AppreciateUserBuilder
    implements Builder<AppreciateUser, AppreciateUserBuilder> {
  _$AppreciateUser _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  int _amount;
  int get amount => _$this._amount;
  set amount(int amount) => _$this._amount = amount;

  AppreciateUserBuilder();

  AppreciateUserBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _message = _$v.message;
      _user = _$v.user?.toBuilder();
      _amount = _$v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppreciateUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppreciateUser;
  }

  @override
  void update(void Function(AppreciateUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppreciateUser build() {
    _$AppreciateUser _$result;
    try {
      _$result = _$v ??
          new _$AppreciateUser._(
              title: title,
              message: message,
              user: user.build(),
              amount: amount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppreciateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
