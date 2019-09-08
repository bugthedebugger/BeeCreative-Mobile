// GENERATED CODE - DO NOT MODIFY BY HAND

part of mood_meter_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoodMeterResponse> _$moodMeterResponseSerializer =
    new _$MoodMeterResponseSerializer();

class _$MoodMeterResponseSerializer
    implements StructuredSerializer<MoodMeterResponse> {
  @override
  final Iterable<Type> types = const [MoodMeterResponse, _$MoodMeterResponse];
  @override
  final String wireName = 'MoodMeterResponse';

  @override
  Iterable serialize(Serializers serializers, MoodMeterResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.moodMeter != null) {
      result
        ..add('MoodMeter')
        ..add(serializers.serialize(object.moodMeter,
            specifiedType: const FullType(MoodMeter)));
    }

    return result;
  }

  @override
  MoodMeterResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoodMeterResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'MoodMeter':
          result.moodMeter.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoodMeter)) as MoodMeter);
          break;
      }
    }

    return result.build();
  }
}

class _$MoodMeterResponse extends MoodMeterResponse {
  @override
  final MoodMeter moodMeter;

  factory _$MoodMeterResponse([void updates(MoodMeterResponseBuilder b)]) =>
      (new MoodMeterResponseBuilder()..update(updates)).build();

  _$MoodMeterResponse._({this.moodMeter}) : super._();

  @override
  MoodMeterResponse rebuild(void updates(MoodMeterResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MoodMeterResponseBuilder toBuilder() =>
      new MoodMeterResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoodMeterResponse && moodMeter == other.moodMeter;
  }

  @override
  int get hashCode {
    return $jf($jc(0, moodMeter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoodMeterResponse')
          ..add('moodMeter', moodMeter))
        .toString();
  }
}

class MoodMeterResponseBuilder
    implements Builder<MoodMeterResponse, MoodMeterResponseBuilder> {
  _$MoodMeterResponse _$v;

  MoodMeterBuilder _moodMeter;
  MoodMeterBuilder get moodMeter =>
      _$this._moodMeter ??= new MoodMeterBuilder();
  set moodMeter(MoodMeterBuilder moodMeter) => _$this._moodMeter = moodMeter;

  MoodMeterResponseBuilder();

  MoodMeterResponseBuilder get _$this {
    if (_$v != null) {
      _moodMeter = _$v.moodMeter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoodMeterResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoodMeterResponse;
  }

  @override
  void update(void updates(MoodMeterResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MoodMeterResponse build() {
    _$MoodMeterResponse _$result;
    try {
      _$result =
          _$v ?? new _$MoodMeterResponse._(moodMeter: _moodMeter?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'moodMeter';
        _moodMeter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MoodMeterResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
