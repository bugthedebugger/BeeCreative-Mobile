// GENERATED CODE - DO NOT MODIFY BY HAND

part of mood_meter_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SaveMood extends SaveMood {
  @override
  final int mood;

  factory _$SaveMood([void updates(SaveMoodBuilder b)]) =>
      (new SaveMoodBuilder()..update(updates)).build();

  _$SaveMood._({this.mood}) : super._() {
    if (mood == null) {
      throw new BuiltValueNullFieldError('SaveMood', 'mood');
    }
  }

  @override
  SaveMood rebuild(void updates(SaveMoodBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SaveMoodBuilder toBuilder() => new SaveMoodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveMood && mood == other.mood;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mood.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SaveMood')..add('mood', mood))
        .toString();
  }
}

class SaveMoodBuilder implements Builder<SaveMood, SaveMoodBuilder> {
  _$SaveMood _$v;

  int _mood;
  int get mood => _$this._mood;
  set mood(int mood) => _$this._mood = mood;

  SaveMoodBuilder();

  SaveMoodBuilder get _$this {
    if (_$v != null) {
      _mood = _$v.mood;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveMood other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SaveMood;
  }

  @override
  void update(void updates(SaveMoodBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SaveMood build() {
    final _$result = _$v ?? new _$SaveMood._(mood: mood);
    replace(_$result);
    return _$result;
  }
}

class _$MoodMeterSuccess extends MoodMeterSuccess {
  factory _$MoodMeterSuccess([void updates(MoodMeterSuccessBuilder b)]) =>
      (new MoodMeterSuccessBuilder()..update(updates)).build();

  _$MoodMeterSuccess._() : super._();

  @override
  MoodMeterSuccess rebuild(void updates(MoodMeterSuccessBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MoodMeterSuccessBuilder toBuilder() =>
      new MoodMeterSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoodMeterSuccess;
  }

  @override
  int get hashCode {
    return 137277814;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('MoodMeterSuccess').toString();
  }
}

class MoodMeterSuccessBuilder
    implements Builder<MoodMeterSuccess, MoodMeterSuccessBuilder> {
  _$MoodMeterSuccess _$v;

  MoodMeterSuccessBuilder();

  @override
  void replace(MoodMeterSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoodMeterSuccess;
  }

  @override
  void update(void updates(MoodMeterSuccessBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MoodMeterSuccess build() {
    final _$result = _$v ?? new _$MoodMeterSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$MoodMeterError extends MoodMeterError {
  @override
  final String message;

  factory _$MoodMeterError([void updates(MoodMeterErrorBuilder b)]) =>
      (new MoodMeterErrorBuilder()..update(updates)).build();

  _$MoodMeterError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('MoodMeterError', 'message');
    }
  }

  @override
  MoodMeterError rebuild(void updates(MoodMeterErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MoodMeterErrorBuilder toBuilder() =>
      new MoodMeterErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoodMeterError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoodMeterError')
          ..add('message', message))
        .toString();
  }
}

class MoodMeterErrorBuilder
    implements Builder<MoodMeterError, MoodMeterErrorBuilder> {
  _$MoodMeterError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  MoodMeterErrorBuilder();

  MoodMeterErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoodMeterError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoodMeterError;
  }

  @override
  void update(void updates(MoodMeterErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MoodMeterError build() {
    final _$result = _$v ?? new _$MoodMeterError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
