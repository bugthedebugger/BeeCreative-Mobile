// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_report;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliveryReport> _$deliveryReportSerializer =
    new _$DeliveryReportSerializer();

class _$DeliveryReportSerializer
    implements StructuredSerializer<DeliveryReport> {
  @override
  final Iterable<Type> types = const [DeliveryReport, _$DeliveryReport];
  @override
  final String wireName = 'DeliveryReport';

  @override
  Iterable serialize(Serializers serializers, DeliveryReport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.delivered != null) {
      result
        ..add('delivered')
        ..add(serializers.serialize(object.delivered,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  DeliveryReport deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryReportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'delivered':
          result.delivered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryReport extends DeliveryReport {
  @override
  final int rating;
  @override
  final bool delivered;

  factory _$DeliveryReport([void updates(DeliveryReportBuilder b)]) =>
      (new DeliveryReportBuilder()..update(updates)).build();

  _$DeliveryReport._({this.rating, this.delivered}) : super._();

  @override
  DeliveryReport rebuild(void updates(DeliveryReportBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryReportBuilder toBuilder() =>
      new DeliveryReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryReport &&
        rating == other.rating &&
        delivered == other.delivered;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rating.hashCode), delivered.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryReport')
          ..add('rating', rating)
          ..add('delivered', delivered))
        .toString();
  }
}

class DeliveryReportBuilder
    implements Builder<DeliveryReport, DeliveryReportBuilder> {
  _$DeliveryReport _$v;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  bool _delivered;
  bool get delivered => _$this._delivered;
  set delivered(bool delivered) => _$this._delivered = delivered;

  DeliveryReportBuilder();

  DeliveryReportBuilder get _$this {
    if (_$v != null) {
      _rating = _$v.rating;
      _delivered = _$v.delivered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryReport other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryReport;
  }

  @override
  void update(void updates(DeliveryReportBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryReport build() {
    final _$result =
        _$v ?? new _$DeliveryReport._(rating: rating, delivered: delivered);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
