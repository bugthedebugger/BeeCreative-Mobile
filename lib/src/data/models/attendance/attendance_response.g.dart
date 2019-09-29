// GENERATED CODE - DO NOT MODIFY BY HAND

part of attendance_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttendanceResponse> _$attendanceResponseSerializer =
    new _$AttendanceResponseSerializer();

class _$AttendanceResponseSerializer
    implements StructuredSerializer<AttendanceResponse> {
  @override
  final Iterable<Type> types = const [AttendanceResponse, _$AttendanceResponse];
  @override
  final String wireName = 'AttendanceResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, AttendanceResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
    ];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(String)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AttendanceResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendanceResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AttendanceResponse extends AttendanceResponse {
  @override
  final String data;
  @override
  final String error;
  @override
  final int code;

  factory _$AttendanceResponse(
          [void Function(AttendanceResponseBuilder) updates]) =>
      (new AttendanceResponseBuilder()..update(updates)).build();

  _$AttendanceResponse._({this.data, this.error, this.code}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('AttendanceResponse', 'code');
    }
  }

  @override
  AttendanceResponse rebuild(
          void Function(AttendanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceResponseBuilder toBuilder() =>
      new AttendanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendanceResponse &&
        data == other.data &&
        error == other.error &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, data.hashCode), error.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttendanceResponse')
          ..add('data', data)
          ..add('error', error)
          ..add('code', code))
        .toString();
  }
}

class AttendanceResponseBuilder
    implements Builder<AttendanceResponse, AttendanceResponseBuilder> {
  _$AttendanceResponse _$v;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  AttendanceResponseBuilder();

  AttendanceResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _error = _$v.error;
      _code = _$v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendanceResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttendanceResponse;
  }

  @override
  void update(void Function(AttendanceResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttendanceResponse build() {
    final _$result =
        _$v ?? new _$AttendanceResponse._(data: data, error: error, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
