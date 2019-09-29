// GENERATED CODE - DO NOT MODIFY BY HAND

part of attendance;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Attendance> _$attendanceSerializer = new _$AttendanceSerializer();

class _$AttendanceSerializer implements StructuredSerializer<Attendance> {
  @override
  final Iterable<Type> types = const [Attendance, _$Attendance];
  @override
  final String wireName = 'Attendance';

  @override
  Iterable<Object> serialize(Serializers serializers, Attendance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'attendanceRecord',
      serializers.serialize(object.attendanceRecord,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttendanceRecord)])),
    ];

    return result;
  }

  @override
  Attendance deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendanceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attendanceRecord':
          result.attendanceRecord.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttendanceRecord)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Attendance extends Attendance {
  @override
  final BuiltList<AttendanceRecord> attendanceRecord;

  factory _$Attendance([void Function(AttendanceBuilder) updates]) =>
      (new AttendanceBuilder()..update(updates)).build();

  _$Attendance._({this.attendanceRecord}) : super._() {
    if (attendanceRecord == null) {
      throw new BuiltValueNullFieldError('Attendance', 'attendanceRecord');
    }
  }

  @override
  Attendance rebuild(void Function(AttendanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceBuilder toBuilder() => new AttendanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attendance && attendanceRecord == other.attendanceRecord;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attendanceRecord.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attendance')
          ..add('attendanceRecord', attendanceRecord))
        .toString();
  }
}

class AttendanceBuilder implements Builder<Attendance, AttendanceBuilder> {
  _$Attendance _$v;

  ListBuilder<AttendanceRecord> _attendanceRecord;
  ListBuilder<AttendanceRecord> get attendanceRecord =>
      _$this._attendanceRecord ??= new ListBuilder<AttendanceRecord>();
  set attendanceRecord(ListBuilder<AttendanceRecord> attendanceRecord) =>
      _$this._attendanceRecord = attendanceRecord;

  AttendanceBuilder();

  AttendanceBuilder get _$this {
    if (_$v != null) {
      _attendanceRecord = _$v.attendanceRecord?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attendance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attendance;
  }

  @override
  void update(void Function(AttendanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Attendance build() {
    _$Attendance _$result;
    try {
      _$result =
          _$v ?? new _$Attendance._(attendanceRecord: attendanceRecord.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attendanceRecord';
        attendanceRecord.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Attendance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
