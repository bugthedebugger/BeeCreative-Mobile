// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_report_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryReportState extends DeliveryReportState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final DeliveryReportResponse deliveryReportResponse;

  factory _$DeliveryReportState(
          [void Function(DeliveryReportStateBuilder) updates]) =>
      (new DeliveryReportStateBuilder()..update(updates)).build();

  _$DeliveryReportState._(
      {this.isLoading, this.error, this.deliveryReportResponse})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('DeliveryReportState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('DeliveryReportState', 'error');
    }
    if (deliveryReportResponse == null) {
      throw new BuiltValueNullFieldError(
          'DeliveryReportState', 'deliveryReportResponse');
    }
  }

  @override
  DeliveryReportState rebuild(
          void Function(DeliveryReportStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryReportStateBuilder toBuilder() =>
      new DeliveryReportStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryReportState &&
        isLoading == other.isLoading &&
        error == other.error &&
        deliveryReportResponse == other.deliveryReportResponse;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isLoading.hashCode), error.hashCode),
        deliveryReportResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryReportState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('deliveryReportResponse', deliveryReportResponse))
        .toString();
  }
}

class DeliveryReportStateBuilder
    implements Builder<DeliveryReportState, DeliveryReportStateBuilder> {
  _$DeliveryReportState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DeliveryReportResponseBuilder _deliveryReportResponse;
  DeliveryReportResponseBuilder get deliveryReportResponse =>
      _$this._deliveryReportResponse ??= new DeliveryReportResponseBuilder();
  set deliveryReportResponse(
          DeliveryReportResponseBuilder deliveryReportResponse) =>
      _$this._deliveryReportResponse = deliveryReportResponse;

  DeliveryReportStateBuilder();

  DeliveryReportStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _deliveryReportResponse = _$v.deliveryReportResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryReportState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryReportState;
  }

  @override
  void update(void Function(DeliveryReportStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryReportState build() {
    _$DeliveryReportState _$result;
    try {
      _$result = _$v ??
          new _$DeliveryReportState._(
              isLoading: isLoading,
              error: error,
              deliveryReportResponse: deliveryReportResponse.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'deliveryReportResponse';
        deliveryReportResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeliveryReportState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
