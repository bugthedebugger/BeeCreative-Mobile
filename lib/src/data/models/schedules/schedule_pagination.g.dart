// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule_pagination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SchedulesPagination> _$schedulesPaginationSerializer =
    new _$SchedulesPaginationSerializer();

class _$SchedulesPaginationSerializer
    implements StructuredSerializer<SchedulesPagination> {
  @override
  final Iterable<Type> types = const [
    SchedulesPagination,
    _$SchedulesPagination
  ];
  @override
  final String wireName = 'SchedulesPagination';

  @override
  Iterable serialize(Serializers serializers, SchedulesPagination object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  SchedulesPagination deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SchedulesPaginationBuilder().build();
  }
}

class _$SchedulesPagination extends SchedulesPagination {
  factory _$SchedulesPagination([void updates(SchedulesPaginationBuilder b)]) =>
      (new SchedulesPaginationBuilder()..update(updates)).build();

  _$SchedulesPagination._() : super._();

  @override
  SchedulesPagination rebuild(void updates(SchedulesPaginationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchedulesPaginationBuilder toBuilder() =>
      new SchedulesPaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulesPagination;
  }

  @override
  int get hashCode {
    return 939184323;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SchedulesPagination').toString();
  }
}

class SchedulesPaginationBuilder
    implements Builder<SchedulesPagination, SchedulesPaginationBuilder> {
  _$SchedulesPagination _$v;

  SchedulesPaginationBuilder();

  @override
  void replace(SchedulesPagination other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SchedulesPagination;
  }

  @override
  void update(void updates(SchedulesPaginationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SchedulesPagination build() {
    final _$result = _$v ?? new _$SchedulesPagination._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
