// GENERATED CODE - DO NOT MODIFY BY HAND

part of notification_settings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationSettings> _$notificationSettingsSerializer =
    new _$NotificationSettingsSerializer();

class _$NotificationSettingsSerializer
    implements StructuredSerializer<NotificationSettings> {
  @override
  final Iterable<Type> types = const [
    NotificationSettings,
    _$NotificationSettings
  ];
  @override
  final String wireName = 'NotificationSettings';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationSettings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'enabled',
      serializers.serialize(object.enabled,
          specifiedType: const FullType(bool)),
      'custom',
      serializers.serialize(object.custom, specifiedType: const FullType(bool)),
    ];
    if (object.placeHolder != null) {
      result
        ..add('placeHolder')
        ..add(serializers.serialize(object.placeHolder,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationSettings deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationSettingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'custom':
          result.custom = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'placeHolder':
          result.placeHolder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationSettings extends NotificationSettings {
  @override
  final bool enabled;
  @override
  final bool custom;
  @override
  final String placeHolder;
  @override
  final String time;

  factory _$NotificationSettings(
          [void Function(NotificationSettingsBuilder) updates]) =>
      (new NotificationSettingsBuilder()..update(updates)).build();

  _$NotificationSettings._(
      {this.enabled, this.custom, this.placeHolder, this.time})
      : super._() {
    if (enabled == null) {
      throw new BuiltValueNullFieldError('NotificationSettings', 'enabled');
    }
    if (custom == null) {
      throw new BuiltValueNullFieldError('NotificationSettings', 'custom');
    }
  }

  @override
  NotificationSettings rebuild(
          void Function(NotificationSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationSettingsBuilder toBuilder() =>
      new NotificationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationSettings &&
        enabled == other.enabled &&
        custom == other.custom &&
        placeHolder == other.placeHolder &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, enabled.hashCode), custom.hashCode),
            placeHolder.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationSettings')
          ..add('enabled', enabled)
          ..add('custom', custom)
          ..add('placeHolder', placeHolder)
          ..add('time', time))
        .toString();
  }
}

class NotificationSettingsBuilder
    implements Builder<NotificationSettings, NotificationSettingsBuilder> {
  _$NotificationSettings _$v;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  bool _custom;
  bool get custom => _$this._custom;
  set custom(bool custom) => _$this._custom = custom;

  String _placeHolder;
  String get placeHolder => _$this._placeHolder;
  set placeHolder(String placeHolder) => _$this._placeHolder = placeHolder;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  NotificationSettingsBuilder();

  NotificationSettingsBuilder get _$this {
    if (_$v != null) {
      _enabled = _$v.enabled;
      _custom = _$v.custom;
      _placeHolder = _$v.placeHolder;
      _time = _$v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationSettings other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationSettings;
  }

  @override
  void update(void Function(NotificationSettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationSettings build() {
    final _$result = _$v ??
        new _$NotificationSettings._(
            enabled: enabled,
            custom: custom,
            placeHolder: placeHolder,
            time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
