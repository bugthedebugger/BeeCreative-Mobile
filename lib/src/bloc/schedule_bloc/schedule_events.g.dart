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

class _$SchedulesLoading extends SchedulesLoading {
  factory _$SchedulesLoading([void updates(SchedulesLoadingBuilder b)]) =>
      (new SchedulesLoadingBuilder()..update(updates)).build();

  _$SchedulesLoading._() : super._();

  @override
  SchedulesLoading rebuild(void updates(SchedulesLoadingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchedulesLoadingBuilder toBuilder() =>
      new SchedulesLoadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulesLoading;
  }

  @override
  int get hashCode {
    return 232011851;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SchedulesLoading').toString();
  }
}

class SchedulesLoadingBuilder
    implements Builder<SchedulesLoading, SchedulesLoadingBuilder> {
  _$SchedulesLoading _$v;

  SchedulesLoadingBuilder();

  @override
  void replace(SchedulesLoading other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SchedulesLoading;
  }

  @override
  void update(void updates(SchedulesLoadingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SchedulesLoading build() {
    final _$result = _$v ?? new _$SchedulesLoading._();
    replace(_$result);
    return _$result;
  }
}

class _$ScheduleLoadedSuccessfully extends ScheduleLoadedSuccessfully {
  @override
  final ScheduleResponse scheduleResponse;

  factory _$ScheduleLoadedSuccessfully(
          [void updates(ScheduleLoadedSuccessfullyBuilder b)]) =>
      (new ScheduleLoadedSuccessfullyBuilder()..update(updates)).build();

  _$ScheduleLoadedSuccessfully._({this.scheduleResponse}) : super._() {
    if (scheduleResponse == null) {
      throw new BuiltValueNullFieldError(
          'ScheduleLoadedSuccessfully', 'scheduleResponse');
    }
  }

  @override
  ScheduleLoadedSuccessfully rebuild(
          void updates(ScheduleLoadedSuccessfullyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleLoadedSuccessfullyBuilder toBuilder() =>
      new ScheduleLoadedSuccessfullyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleLoadedSuccessfully &&
        scheduleResponse == other.scheduleResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, scheduleResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScheduleLoadedSuccessfully')
          ..add('scheduleResponse', scheduleResponse))
        .toString();
  }
}

class ScheduleLoadedSuccessfullyBuilder
    implements
        Builder<ScheduleLoadedSuccessfully, ScheduleLoadedSuccessfullyBuilder> {
  _$ScheduleLoadedSuccessfully _$v;

  ScheduleResponseBuilder _scheduleResponse;
  ScheduleResponseBuilder get scheduleResponse =>
      _$this._scheduleResponse ??= new ScheduleResponseBuilder();
  set scheduleResponse(ScheduleResponseBuilder scheduleResponse) =>
      _$this._scheduleResponse = scheduleResponse;

  ScheduleLoadedSuccessfullyBuilder();

  ScheduleLoadedSuccessfullyBuilder get _$this {
    if (_$v != null) {
      _scheduleResponse = _$v.scheduleResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleLoadedSuccessfully other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScheduleLoadedSuccessfully;
  }

  @override
  void update(void updates(ScheduleLoadedSuccessfullyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScheduleLoadedSuccessfully build() {
    _$ScheduleLoadedSuccessfully _$result;
    try {
      _$result = _$v ??
          new _$ScheduleLoadedSuccessfully._(
              scheduleResponse: scheduleResponse.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scheduleResponse';
        scheduleResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScheduleLoadedSuccessfully', _$failedField, e.toString());
      }
      rethrow;
    }
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

class _$SchedulesError extends SchedulesError {
  @override
  final String message;

  factory _$SchedulesError([void updates(SchedulesErrorBuilder b)]) =>
      (new SchedulesErrorBuilder()..update(updates)).build();

  _$SchedulesError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('SchedulesError', 'message');
    }
  }

  @override
  SchedulesError rebuild(void updates(SchedulesErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchedulesErrorBuilder toBuilder() =>
      new SchedulesErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulesError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SchedulesError')
          ..add('message', message))
        .toString();
  }
}

class SchedulesErrorBuilder
    implements Builder<SchedulesError, SchedulesErrorBuilder> {
  _$SchedulesError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SchedulesErrorBuilder();

  SchedulesErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchedulesError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SchedulesError;
  }

  @override
  void update(void updates(SchedulesErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SchedulesError build() {
    final _$result = _$v ?? new _$SchedulesError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$NoSchedules extends NoSchedules {
  factory _$NoSchedules([void updates(NoSchedulesBuilder b)]) =>
      (new NoSchedulesBuilder()..update(updates)).build();

  _$NoSchedules._() : super._();

  @override
  NoSchedules rebuild(void updates(NoSchedulesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSchedulesBuilder toBuilder() => new NoSchedulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSchedules;
  }

  @override
  int get hashCode {
    return 842067409;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('NoSchedules').toString();
  }
}

class NoSchedulesBuilder implements Builder<NoSchedules, NoSchedulesBuilder> {
  _$NoSchedules _$v;

  NoSchedulesBuilder();

  @override
  void replace(NoSchedules other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NoSchedules;
  }

  @override
  void update(void updates(NoSchedulesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NoSchedules build() {
    final _$result = _$v ?? new _$NoSchedules._();
    replace(_$result);
    return _$result;
  }
}

class _$SchedulesReloading extends SchedulesReloading {
  factory _$SchedulesReloading([void updates(SchedulesReloadingBuilder b)]) =>
      (new SchedulesReloadingBuilder()..update(updates)).build();

  _$SchedulesReloading._() : super._();

  @override
  SchedulesReloading rebuild(void updates(SchedulesReloadingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchedulesReloadingBuilder toBuilder() =>
      new SchedulesReloadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulesReloading;
  }

  @override
  int get hashCode {
    return 478446859;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SchedulesReloading').toString();
  }
}

class SchedulesReloadingBuilder
    implements Builder<SchedulesReloading, SchedulesReloadingBuilder> {
  _$SchedulesReloading _$v;

  SchedulesReloadingBuilder();

  @override
  void replace(SchedulesReloading other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SchedulesReloading;
  }

  @override
  void update(void updates(SchedulesReloadingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SchedulesReloading build() {
    final _$result = _$v ?? new _$SchedulesReloading._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
