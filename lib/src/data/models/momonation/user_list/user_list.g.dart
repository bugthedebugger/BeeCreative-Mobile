// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserList> _$userListSerializer = new _$UserListSerializer();

class _$UserListSerializer implements StructuredSerializer<UserList> {
  @override
  final Iterable<Type> types = const [UserList, _$UserList];
  @override
  final String wireName = 'UserList';

  @override
  Iterable serialize(Serializers serializers, UserList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.users != null) {
      result
        ..add('users')
        ..add(serializers.serialize(object.users,
            specifiedType:
                const FullType(BuiltList, const [const FullType(User)])));
    }

    return result;
  }

  @override
  UserList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(User)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$UserList extends UserList {
  @override
  final BuiltList<User> users;

  factory _$UserList([void updates(UserListBuilder b)]) =>
      (new UserListBuilder()..update(updates)).build();

  _$UserList._({this.users}) : super._();

  @override
  UserList rebuild(void updates(UserListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListBuilder toBuilder() => new UserListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserList && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserList')..add('users', users))
        .toString();
  }
}

class UserListBuilder implements Builder<UserList, UserListBuilder> {
  _$UserList _$v;

  ListBuilder<User> _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User> users) => _$this._users = users;

  UserListBuilder();

  UserListBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserList;
  }

  @override
  void update(void updates(UserListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserList build() {
    _$UserList _$result;
    try {
      _$result = _$v ?? new _$UserList._(users: _users?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
