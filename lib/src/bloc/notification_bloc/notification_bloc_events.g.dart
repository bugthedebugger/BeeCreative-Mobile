// GENERATED CODE - DO NOT MODIFY BY HAND

part of notification_bloc_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableNotification extends EnableNotification {
  @override
  final String time;

  factory _$EnableNotification(
          [void Function(EnableNotificationBuilder) updates]) =>
      (new EnableNotificationBuilder()..update(updates)).build();

  _$EnableNotification._({this.time}) : super._() {
    if (time == null) {
      throw new BuiltValueNullFieldError('EnableNotification', 'time');
    }
  }

  @override
  EnableNotification rebuild(
          void Function(EnableNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableNotificationBuilder toBuilder() =>
      new EnableNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableNotification && time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(0, time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnableNotification')
          ..add('time', time))
        .toString();
  }
}

class EnableNotificationBuilder
    implements Builder<EnableNotification, EnableNotificationBuilder> {
  _$EnableNotification _$v;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  EnableNotificationBuilder();

  EnableNotificationBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableNotification other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EnableNotification;
  }

  @override
  void update(void Function(EnableNotificationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnableNotification build() {
    final _$result = _$v ?? new _$EnableNotification._(time: time);
    replace(_$result);
    return _$result;
  }
}

class _$EnableNotificationError extends EnableNotificationError {
  @override
  final String message;

  factory _$EnableNotificationError(
          [void Function(EnableNotificationErrorBuilder) updates]) =>
      (new EnableNotificationErrorBuilder()..update(updates)).build();

  _$EnableNotificationError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('EnableNotificationError', 'message');
    }
  }

  @override
  EnableNotificationError rebuild(
          void Function(EnableNotificationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableNotificationErrorBuilder toBuilder() =>
      new EnableNotificationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableNotificationError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnableNotificationError')
          ..add('message', message))
        .toString();
  }
}

class EnableNotificationErrorBuilder
    implements
        Builder<EnableNotificationError, EnableNotificationErrorBuilder> {
  _$EnableNotificationError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  EnableNotificationErrorBuilder();

  EnableNotificationErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableNotificationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EnableNotificationError;
  }

  @override
  void update(void Function(EnableNotificationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnableNotificationError build() {
    final _$result = _$v ?? new _$EnableNotificationError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$EnableNotificationSuccess extends EnableNotificationSuccess {
  factory _$EnableNotificationSuccess(
          [void Function(EnableNotificationSuccessBuilder) updates]) =>
      (new EnableNotificationSuccessBuilder()..update(updates)).build();

  _$EnableNotificationSuccess._() : super._();

  @override
  EnableNotificationSuccess rebuild(
          void Function(EnableNotificationSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableNotificationSuccessBuilder toBuilder() =>
      new EnableNotificationSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableNotificationSuccess;
  }

  @override
  int get hashCode {
    return 729685915;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('EnableNotificationSuccess').toString();
  }
}

class EnableNotificationSuccessBuilder
    implements
        Builder<EnableNotificationSuccess, EnableNotificationSuccessBuilder> {
  _$EnableNotificationSuccess _$v;

  EnableNotificationSuccessBuilder();

  @override
  void replace(EnableNotificationSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EnableNotificationSuccess;
  }

  @override
  void update(void Function(EnableNotificationSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnableNotificationSuccess build() {
    final _$result = _$v ?? new _$EnableNotificationSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$CheckNotificationEnabled extends CheckNotificationEnabled {
  factory _$CheckNotificationEnabled(
          [void Function(CheckNotificationEnabledBuilder) updates]) =>
      (new CheckNotificationEnabledBuilder()..update(updates)).build();

  _$CheckNotificationEnabled._() : super._();

  @override
  CheckNotificationEnabled rebuild(
          void Function(CheckNotificationEnabledBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckNotificationEnabledBuilder toBuilder() =>
      new CheckNotificationEnabledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckNotificationEnabled;
  }

  @override
  int get hashCode {
    return 341222694;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CheckNotificationEnabled').toString();
  }
}

class CheckNotificationEnabledBuilder
    implements
        Builder<CheckNotificationEnabled, CheckNotificationEnabledBuilder> {
  _$CheckNotificationEnabled _$v;

  CheckNotificationEnabledBuilder();

  @override
  void replace(CheckNotificationEnabled other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckNotificationEnabled;
  }

  @override
  void update(void Function(CheckNotificationEnabledBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckNotificationEnabled build() {
    final _$result = _$v ?? new _$CheckNotificationEnabled._();
    replace(_$result);
    return _$result;
  }
}

class _$NotificationDisabled extends NotificationDisabled {
  factory _$NotificationDisabled(
          [void Function(NotificationDisabledBuilder) updates]) =>
      (new NotificationDisabledBuilder()..update(updates)).build();

  _$NotificationDisabled._() : super._();

  @override
  NotificationDisabled rebuild(
          void Function(NotificationDisabledBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationDisabledBuilder toBuilder() =>
      new NotificationDisabledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationDisabled;
  }

  @override
  int get hashCode {
    return 290913986;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('NotificationDisabled').toString();
  }
}

class NotificationDisabledBuilder
    implements Builder<NotificationDisabled, NotificationDisabledBuilder> {
  _$NotificationDisabled _$v;

  NotificationDisabledBuilder();

  @override
  void replace(NotificationDisabled other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationDisabled;
  }

  @override
  void update(void Function(NotificationDisabledBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationDisabled build() {
    final _$result = _$v ?? new _$NotificationDisabled._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
