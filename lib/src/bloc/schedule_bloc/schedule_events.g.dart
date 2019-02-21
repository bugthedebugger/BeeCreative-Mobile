// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetScheduleFromNetwork extends GetScheduleFromNetwork {
  @override
  final String token;

  factory _$GetScheduleFromNetwork(
          [void updates(GetScheduleFromNetworkBuilder b)]) =>
      (new GetScheduleFromNetworkBuilder()..update(updates)).build();

  _$GetScheduleFromNetwork._({this.token}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('GetScheduleFromNetwork', 'token');
    }
  }

  @override
  GetScheduleFromNetwork rebuild(
          void updates(GetScheduleFromNetworkBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetScheduleFromNetworkBuilder toBuilder() =>
      new GetScheduleFromNetworkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetScheduleFromNetwork && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetScheduleFromNetwork')
          ..add('token', token))
        .toString();
  }
}

class GetScheduleFromNetworkBuilder
    implements Builder<GetScheduleFromNetwork, GetScheduleFromNetworkBuilder> {
  _$GetScheduleFromNetwork _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  GetScheduleFromNetworkBuilder();

  GetScheduleFromNetworkBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetScheduleFromNetwork other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetScheduleFromNetwork;
  }

  @override
  void update(void updates(GetScheduleFromNetworkBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetScheduleFromNetwork build() {
    final _$result = _$v ?? new _$GetScheduleFromNetwork._(token: token);
    replace(_$result);
    return _$result;
  }
}

class _$GetScheduleFromStorage extends GetScheduleFromStorage {
  @override
  final String token;

  factory _$GetScheduleFromStorage(
          [void updates(GetScheduleFromStorageBuilder b)]) =>
      (new GetScheduleFromStorageBuilder()..update(updates)).build();

  _$GetScheduleFromStorage._({this.token}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('GetScheduleFromStorage', 'token');
    }
  }

  @override
  GetScheduleFromStorage rebuild(
          void updates(GetScheduleFromStorageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetScheduleFromStorageBuilder toBuilder() =>
      new GetScheduleFromStorageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetScheduleFromStorage && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetScheduleFromStorage')
          ..add('token', token))
        .toString();
  }
}

class GetScheduleFromStorageBuilder
    implements Builder<GetScheduleFromStorage, GetScheduleFromStorageBuilder> {
  _$GetScheduleFromStorage _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  GetScheduleFromStorageBuilder();

  GetScheduleFromStorageBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetScheduleFromStorage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetScheduleFromStorage;
  }

  @override
  void update(void updates(GetScheduleFromStorageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetScheduleFromStorage build() {
    final _$result = _$v ?? new _$GetScheduleFromStorage._(token: token);
    replace(_$result);
    return _$result;
  }
}

class _$ScheduleExpired extends ScheduleExpired {
  @override
  final DateTime date;

  factory _$ScheduleExpired([void updates(ScheduleExpiredBuilder b)]) =>
      (new ScheduleExpiredBuilder()..update(updates)).build();

  _$ScheduleExpired._({this.date}) : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('ScheduleExpired', 'date');
    }
  }

  @override
  ScheduleExpired rebuild(void updates(ScheduleExpiredBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleExpiredBuilder toBuilder() =>
      new ScheduleExpiredBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleExpired && date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(0, date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScheduleExpired')..add('date', date))
        .toString();
  }
}

class ScheduleExpiredBuilder
    implements Builder<ScheduleExpired, ScheduleExpiredBuilder> {
  _$ScheduleExpired _$v;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  ScheduleExpiredBuilder();

  ScheduleExpiredBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleExpired other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScheduleExpired;
  }

  @override
  void update(void updates(ScheduleExpiredBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScheduleExpired build() {
    final _$result = _$v ?? new _$ScheduleExpired._(date: date);
    replace(_$result);
    return _$result;
  }
}

class _$ReloadSchedulesFromNetwork extends ReloadSchedulesFromNetwork {
  @override
  final String token;

  factory _$ReloadSchedulesFromNetwork(
          [void updates(ReloadSchedulesFromNetworkBuilder b)]) =>
      (new ReloadSchedulesFromNetworkBuilder()..update(updates)).build();

  _$ReloadSchedulesFromNetwork._({this.token}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('ReloadSchedulesFromNetwork', 'token');
    }
  }

  @override
  ReloadSchedulesFromNetwork rebuild(
          void updates(ReloadSchedulesFromNetworkBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ReloadSchedulesFromNetworkBuilder toBuilder() =>
      new ReloadSchedulesFromNetworkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReloadSchedulesFromNetwork && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReloadSchedulesFromNetwork')
          ..add('token', token))
        .toString();
  }
}

class ReloadSchedulesFromNetworkBuilder
    implements
        Builder<ReloadSchedulesFromNetwork, ReloadSchedulesFromNetworkBuilder> {
  _$ReloadSchedulesFromNetwork _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  ReloadSchedulesFromNetworkBuilder();

  ReloadSchedulesFromNetworkBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReloadSchedulesFromNetwork other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReloadSchedulesFromNetwork;
  }

  @override
  void update(void updates(ReloadSchedulesFromNetworkBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ReloadSchedulesFromNetwork build() {
    final _$result = _$v ?? new _$ReloadSchedulesFromNetwork._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
