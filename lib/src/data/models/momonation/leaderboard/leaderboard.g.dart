// GENERATED CODE - DO NOT MODIFY BY HAND

part of leaderboard;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Leaderboard> _$leaderboardSerializer = new _$LeaderboardSerializer();

class _$LeaderboardSerializer implements StructuredSerializer<Leaderboard> {
  @override
  final Iterable<Type> types = const [Leaderboard, _$Leaderboard];
  @override
  final String wireName = 'Leaderboard';

  @override
  Iterable<Object> serialize(Serializers serializers, Leaderboard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.users != null) {
      result
        ..add('users')
        ..add(serializers.serialize(object.users,
            specifiedType:
                const FullType(BuiltList, const [const FullType(User)])));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.min != null) {
      result
        ..add('min')
        ..add(serializers.serialize(object.min,
            specifiedType: const FullType(int)));
    }
    if (object.max != null) {
      result
        ..add('max')
        ..add(serializers.serialize(object.max,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Leaderboard deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeaderboardBuilder();

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
              as BuiltList<dynamic>);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Leaderboard extends Leaderboard {
  @override
  final BuiltList<User> users;
  @override
  final String date;
  @override
  final int min;
  @override
  final int max;

  factory _$Leaderboard([void Function(LeaderboardBuilder) updates]) =>
      (new LeaderboardBuilder()..update(updates)).build();

  _$Leaderboard._({this.users, this.date, this.min, this.max}) : super._();

  @override
  Leaderboard rebuild(void Function(LeaderboardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaderboardBuilder toBuilder() => new LeaderboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Leaderboard &&
        users == other.users &&
        date == other.date &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, users.hashCode), date.hashCode), min.hashCode),
        max.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Leaderboard')
          ..add('users', users)
          ..add('date', date)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class LeaderboardBuilder implements Builder<Leaderboard, LeaderboardBuilder> {
  _$Leaderboard _$v;

  ListBuilder<User> _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User> users) => _$this._users = users;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _min;
  int get min => _$this._min;
  set min(int min) => _$this._min = min;

  int _max;
  int get max => _$this._max;
  set max(int max) => _$this._max = max;

  LeaderboardBuilder();

  LeaderboardBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _date = _$v.date;
      _min = _$v.min;
      _max = _$v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Leaderboard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Leaderboard;
  }

  @override
  void update(void Function(LeaderboardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Leaderboard build() {
    _$Leaderboard _$result;
    try {
      _$result = _$v ??
          new _$Leaderboard._(
              users: _users?.build(), date: date, min: min, max: max);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Leaderboard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
