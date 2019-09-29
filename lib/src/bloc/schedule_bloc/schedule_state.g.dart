// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduleState extends ScheduleState {
  @override
  final bool isLoading;
  @override
  final ScheduleResponse scheduleResponse;
  @override
  final String error;
  @override
  final bool isReloading;

  factory _$ScheduleState([void Function(ScheduleStateBuilder) updates]) =>
      (new ScheduleStateBuilder()..update(updates)).build();

  _$ScheduleState._(
      {this.isLoading, this.scheduleResponse, this.error, this.isReloading})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('ScheduleState', 'isLoading');
    }
    if (scheduleResponse == null) {
      throw new BuiltValueNullFieldError('ScheduleState', 'scheduleResponse');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('ScheduleState', 'error');
    }
    if (isReloading == null) {
      throw new BuiltValueNullFieldError('ScheduleState', 'isReloading');
    }
  }

  @override
  ScheduleState rebuild(void Function(ScheduleStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleStateBuilder toBuilder() => new ScheduleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleState &&
        isLoading == other.isLoading &&
        scheduleResponse == other.scheduleResponse &&
        error == other.error &&
        isReloading == other.isReloading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), scheduleResponse.hashCode),
            error.hashCode),
        isReloading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScheduleState')
          ..add('isLoading', isLoading)
          ..add('scheduleResponse', scheduleResponse)
          ..add('error', error)
          ..add('isReloading', isReloading))
        .toString();
  }
}

class ScheduleStateBuilder
    implements Builder<ScheduleState, ScheduleStateBuilder> {
  _$ScheduleState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  ScheduleResponseBuilder _scheduleResponse;
  ScheduleResponseBuilder get scheduleResponse =>
      _$this._scheduleResponse ??= new ScheduleResponseBuilder();
  set scheduleResponse(ScheduleResponseBuilder scheduleResponse) =>
      _$this._scheduleResponse = scheduleResponse;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isReloading;
  bool get isReloading => _$this._isReloading;
  set isReloading(bool isReloading) => _$this._isReloading = isReloading;

  ScheduleStateBuilder();

  ScheduleStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _scheduleResponse = _$v.scheduleResponse?.toBuilder();
      _error = _$v.error;
      _isReloading = _$v.isReloading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScheduleState;
  }

  @override
  void update(void Function(ScheduleStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScheduleState build() {
    _$ScheduleState _$result;
    try {
      _$result = _$v ??
          new _$ScheduleState._(
              isLoading: isLoading,
              scheduleResponse: scheduleResponse.build(),
              error: error,
              isReloading: isReloading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scheduleResponse';
        scheduleResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScheduleState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
