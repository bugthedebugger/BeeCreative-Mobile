// GENERATED CODE - DO NOT MODIFY BY HAND

part of leaderboards;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Leaderboards> _$leaderboardsSerializer =
    new _$LeaderboardsSerializer();

class _$LeaderboardsSerializer implements StructuredSerializer<Leaderboards> {
  @override
  final Iterable<Type> types = const [Leaderboards, _$Leaderboards];
  @override
  final String wireName = 'Leaderboards';

  @override
  Iterable<Object> serialize(Serializers serializers, Leaderboards object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.leaderboards != null) {
      result
        ..add('leaderboards')
        ..add(serializers.serialize(object.leaderboards,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Leaderboard)])));
    }
    return result;
  }

  @override
  Leaderboards deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeaderboardsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'leaderboards':
          result.leaderboards.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Leaderboard)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Leaderboards extends Leaderboards {
  @override
  final BuiltList<Leaderboard> leaderboards;

  factory _$Leaderboards([void Function(LeaderboardsBuilder) updates]) =>
      (new LeaderboardsBuilder()..update(updates)).build();

  _$Leaderboards._({this.leaderboards}) : super._();

  @override
  Leaderboards rebuild(void Function(LeaderboardsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaderboardsBuilder toBuilder() => new LeaderboardsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Leaderboards && leaderboards == other.leaderboards;
  }

  @override
  int get hashCode {
    return $jf($jc(0, leaderboards.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Leaderboards')
          ..add('leaderboards', leaderboards))
        .toString();
  }
}

class LeaderboardsBuilder
    implements Builder<Leaderboards, LeaderboardsBuilder> {
  _$Leaderboards _$v;

  ListBuilder<Leaderboard> _leaderboards;
  ListBuilder<Leaderboard> get leaderboards =>
      _$this._leaderboards ??= new ListBuilder<Leaderboard>();
  set leaderboards(ListBuilder<Leaderboard> leaderboards) =>
      _$this._leaderboards = leaderboards;

  LeaderboardsBuilder();

  LeaderboardsBuilder get _$this {
    if (_$v != null) {
      _leaderboards = _$v.leaderboards?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Leaderboards other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Leaderboards;
  }

  @override
  void update(void Function(LeaderboardsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Leaderboards build() {
    _$Leaderboards _$result;
    try {
      _$result =
          _$v ?? new _$Leaderboards._(leaderboards: _leaderboards?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'leaderboards';
        _leaderboards?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Leaderboards', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
