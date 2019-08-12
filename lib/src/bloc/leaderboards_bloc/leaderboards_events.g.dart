// GENERATED CODE - DO NOT MODIFY BY HAND

part of leaderboards_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLeaderboards extends GetLeaderboards {
  factory _$GetLeaderboards([void updates(GetLeaderboardsBuilder b)]) =>
      (new GetLeaderboardsBuilder()..update(updates)).build();

  _$GetLeaderboards._() : super._();

  @override
  GetLeaderboards rebuild(void updates(GetLeaderboardsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLeaderboardsBuilder toBuilder() =>
      new GetLeaderboardsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLeaderboards;
  }

  @override
  int get hashCode {
    return 168528059;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetLeaderboards').toString();
  }
}

class GetLeaderboardsBuilder
    implements Builder<GetLeaderboards, GetLeaderboardsBuilder> {
  _$GetLeaderboards _$v;

  GetLeaderboardsBuilder();

  @override
  void replace(GetLeaderboards other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLeaderboards;
  }

  @override
  void update(void updates(GetLeaderboardsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLeaderboards build() {
    final _$result = _$v ?? new _$GetLeaderboards._();
    replace(_$result);
    return _$result;
  }
}

class _$GetLeaderboardsSuccess extends GetLeaderboardsSuccess {
  @override
  final Leaderboards leaderboards;

  factory _$GetLeaderboardsSuccess(
          [void updates(GetLeaderboardsSuccessBuilder b)]) =>
      (new GetLeaderboardsSuccessBuilder()..update(updates)).build();

  _$GetLeaderboardsSuccess._({this.leaderboards}) : super._() {
    if (leaderboards == null) {
      throw new BuiltValueNullFieldError(
          'GetLeaderboardsSuccess', 'leaderboards');
    }
  }

  @override
  GetLeaderboardsSuccess rebuild(
          void updates(GetLeaderboardsSuccessBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLeaderboardsSuccessBuilder toBuilder() =>
      new GetLeaderboardsSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLeaderboardsSuccess &&
        leaderboards == other.leaderboards;
  }

  @override
  int get hashCode {
    return $jf($jc(0, leaderboards.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetLeaderboardsSuccess')
          ..add('leaderboards', leaderboards))
        .toString();
  }
}

class GetLeaderboardsSuccessBuilder
    implements Builder<GetLeaderboardsSuccess, GetLeaderboardsSuccessBuilder> {
  _$GetLeaderboardsSuccess _$v;

  LeaderboardsBuilder _leaderboards;
  LeaderboardsBuilder get leaderboards =>
      _$this._leaderboards ??= new LeaderboardsBuilder();
  set leaderboards(LeaderboardsBuilder leaderboards) =>
      _$this._leaderboards = leaderboards;

  GetLeaderboardsSuccessBuilder();

  GetLeaderboardsSuccessBuilder get _$this {
    if (_$v != null) {
      _leaderboards = _$v.leaderboards?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLeaderboardsSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLeaderboardsSuccess;
  }

  @override
  void update(void updates(GetLeaderboardsSuccessBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLeaderboardsSuccess build() {
    _$GetLeaderboardsSuccess _$result;
    try {
      _$result = _$v ??
          new _$GetLeaderboardsSuccess._(leaderboards: leaderboards.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'leaderboards';
        leaderboards.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetLeaderboardsSuccess', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LeaderboardsError extends LeaderboardsError {
  @override
  final String message;

  factory _$LeaderboardsError([void updates(LeaderboardsErrorBuilder b)]) =>
      (new LeaderboardsErrorBuilder()..update(updates)).build();

  _$LeaderboardsError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('LeaderboardsError', 'message');
    }
  }

  @override
  LeaderboardsError rebuild(void updates(LeaderboardsErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaderboardsErrorBuilder toBuilder() =>
      new LeaderboardsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaderboardsError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LeaderboardsError')
          ..add('message', message))
        .toString();
  }
}

class LeaderboardsErrorBuilder
    implements Builder<LeaderboardsError, LeaderboardsErrorBuilder> {
  _$LeaderboardsError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  LeaderboardsErrorBuilder();

  LeaderboardsErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaderboardsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LeaderboardsError;
  }

  @override
  void update(void updates(LeaderboardsErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LeaderboardsError build() {
    final _$result = _$v ?? new _$LeaderboardsError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
