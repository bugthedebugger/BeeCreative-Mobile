// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_report_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliveryReportResponse> _$deliveryReportResponseSerializer =
    new _$DeliveryReportResponseSerializer();

class _$DeliveryReportResponseSerializer
    implements StructuredSerializer<DeliveryReportResponse> {
  @override
  final Iterable<Type> types = const [
    DeliveryReportResponse,
    _$DeliveryReportResponse
  ];
  @override
  final String wireName = 'DeliveryReportResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DeliveryReportResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(String)));
    }
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(int)));
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
  DeliveryReportResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryReportResponseBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryReportResponse extends DeliveryReportResponse {
  @override
  final String data;
  @override
  final int code;
  @override
  final String error;

  factory _$DeliveryReportResponse(
          [void Function(DeliveryReportResponseBuilder) updates]) =>
      (new DeliveryReportResponseBuilder()..update(updates)).build();

  _$DeliveryReportResponse._({this.data, this.code, this.error}) : super._();

  @override
  DeliveryReportResponse rebuild(
          void Function(DeliveryReportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryReportResponseBuilder toBuilder() =>
      new DeliveryReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryReportResponse &&
        data == other.data &&
        code == other.code &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, data.hashCode), code.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryReportResponse')
          ..add('data', data)
          ..add('code', code)
          ..add('error', error))
        .toString();
  }
}

class DeliveryReportResponseBuilder
    implements Builder<DeliveryReportResponse, DeliveryReportResponseBuilder> {
  _$DeliveryReportResponse _$v;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DeliveryReportResponseBuilder();

  DeliveryReportResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _code = _$v.code;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryReportResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryReportResponse;
  }

  @override
  void update(void Function(DeliveryReportResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryReportResponse build() {
    final _$result = _$v ??
        new _$DeliveryReportResponse._(data: data, code: code, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
