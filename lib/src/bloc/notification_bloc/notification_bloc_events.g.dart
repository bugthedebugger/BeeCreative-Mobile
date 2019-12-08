// GENERATED CODE - DO NOT MODIFY BY HAND

part of notification_bloc_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckNotificationStatus extends CheckNotificationStatus {
  factory _$CheckNotificationStatus(
          [void Function(CheckNotificationStatusBuilder) updates]) =>
      (new CheckNotificationStatusBuilder()..update(updates)).build();

  _$CheckNotificationStatus._() : super._();

  @override
  CheckNotificationStatus rebuild(
          void Function(CheckNotificationStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckNotificationStatusBuilder toBuilder() =>
      new CheckNotificationStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckNotificationStatus;
  }

  @override
  int get hashCode {
    return 297436666;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CheckNotificationStatus').toString();
  }
}

class CheckNotificationStatusBuilder
    implements
        Builder<CheckNotificationStatus, CheckNotificationStatusBuilder> {
  _$CheckNotificationStatus _$v;

  CheckNotificationStatusBuilder();

  @override
  void replace(CheckNotificationStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckNotificationStatus;
  }

  @override
  void update(void Function(CheckNotificationStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckNotificationStatus build() {
    final _$result = _$v ?? new _$CheckNotificationStatus._();
    replace(_$result);
    return _$result;
  }
}

class _$NotificationEnabled extends NotificationEnabled {
  @override
  final NotificationSettings settings;

  factory _$NotificationEnabled(
          [void Function(NotificationEnabledBuilder) updates]) =>
      (new NotificationEnabledBuilder()..update(updates)).build();

  _$NotificationEnabled._({this.settings}) : super._() {
    if (settings == null) {
      throw new BuiltValueNullFieldError('NotificationEnabled', 'settings');
    }
  }

  @override
  NotificationEnabled rebuild(
          void Function(NotificationEnabledBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationEnabledBuilder toBuilder() =>
      new NotificationEnabledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationEnabled && settings == other.settings;
  }

  @override
  int get hashCode {
    return $jf($jc(0, settings.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationEnabled')
          ..add('settings', settings))
        .toString();
  }
}

class NotificationEnabledBuilder
    implements Builder<NotificationEnabled, NotificationEnabledBuilder> {
  _$NotificationEnabled _$v;

  NotificationSettingsBuilder _settings;
  NotificationSettingsBuilder get settings =>
      _$this._settings ??= new NotificationSettingsBuilder();
  set settings(NotificationSettingsBuilder settings) =>
      _$this._settings = settings;

  NotificationEnabledBuilder();

  NotificationEnabledBuilder get _$this {
    if (_$v != null) {
      _settings = _$v.settings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationEnabled other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationEnabled;
  }

  @override
  void update(void Function(NotificationEnabledBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationEnabled build() {
    _$NotificationEnabled _$result;
    try {
      _$result = _$v ?? new _$NotificationEnabled._(settings: settings.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'settings';
        settings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationEnabled', _$failedField, e.toString());
      }
      rethrow;
    }
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

class _$EnableNotification extends EnableNotification {
  @override
  final NotificationSettings settings;

  factory _$EnableNotification(
          [void Function(EnableNotificationBuilder) updates]) =>
      (new EnableNotificationBuilder()..update(updates)).build();

  _$EnableNotification._({this.settings}) : super._() {
    if (settings == null) {
      throw new BuiltValueNullFieldError('EnableNotification', 'settings');
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
    return other is EnableNotification && settings == other.settings;
  }

  @override
  int get hashCode {
    return $jf($jc(0, settings.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnableNotification')
          ..add('settings', settings))
        .toString();
  }
}

class EnableNotificationBuilder
    implements Builder<EnableNotification, EnableNotificationBuilder> {
  _$EnableNotification _$v;

  NotificationSettingsBuilder _settings;
  NotificationSettingsBuilder get settings =>
      _$this._settings ??= new NotificationSettingsBuilder();
  set settings(NotificationSettingsBuilder settings) =>
      _$this._settings = settings;

  EnableNotificationBuilder();

  EnableNotificationBuilder get _$this {
    if (_$v != null) {
      _settings = _$v.settings?.toBuilder();
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
    _$EnableNotification _$result;
    try {
      _$result = _$v ?? new _$EnableNotification._(settings: settings.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'settings';
        settings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EnableNotification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DisableNotification extends DisableNotification {
  factory _$DisableNotification(
          [void Function(DisableNotificationBuilder) updates]) =>
      (new DisableNotificationBuilder()..update(updates)).build();

  _$DisableNotification._() : super._();

  @override
  DisableNotification rebuild(
          void Function(DisableNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableNotificationBuilder toBuilder() =>
      new DisableNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableNotification;
  }

  @override
  int get hashCode {
    return 609320737;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DisableNotification').toString();
  }
}

class DisableNotificationBuilder
    implements Builder<DisableNotification, DisableNotificationBuilder> {
  _$DisableNotification _$v;

  DisableNotificationBuilder();

  @override
  void replace(DisableNotification other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DisableNotification;
  }

  @override
  void update(void Function(DisableNotificationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DisableNotification build() {
    final _$result = _$v ?? new _$DisableNotification._();
    replace(_$result);
    return _$result;
  }
}

class _$NotificationError extends NotificationError {
  @override
  final String message;

  factory _$NotificationError(
          [void Function(NotificationErrorBuilder) updates]) =>
      (new NotificationErrorBuilder()..update(updates)).build();

  _$NotificationError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('NotificationError', 'message');
    }
  }

  @override
  NotificationError rebuild(void Function(NotificationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationErrorBuilder toBuilder() =>
      new NotificationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationError')
          ..add('message', message))
        .toString();
  }
}

class NotificationErrorBuilder
    implements Builder<NotificationError, NotificationErrorBuilder> {
  _$NotificationError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  NotificationErrorBuilder();

  NotificationErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationError;
  }

  @override
  void update(void Function(NotificationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationError build() {
    final _$result = _$v ?? new _$NotificationError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
