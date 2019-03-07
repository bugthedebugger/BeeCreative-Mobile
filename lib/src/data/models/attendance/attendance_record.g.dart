// GENERATED CODE - DO NOT MODIFY BY HAND

part of attendance_record;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttendanceRecord> _$attendanceRecordSerializer =
    new _$AttendanceRecordSerializer();

class _$AttendanceRecordSerializer
    implements StructuredSerializer<AttendanceRecord> {
  @override
  final Iterable<Type> types = const [AttendanceRecord, _$AttendanceRecord];
  @override
  final String wireName = 'AttendanceRecord';

  @override
  Iterable serialize(Serializers serializers, AttendanceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'student',
      serializers.serialize(object.student,
          specifiedType: const FullType(Student)),
      'schedule',
      serializers.serialize(object.schedule,
          specifiedType: const FullType(Schedule)),
      'attendance',
      serializers.serialize(object.attendance,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  AttendanceRecord deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendanceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'student':
          result.student.replace(serializers.deserialize(value,
              specifiedType: const FullType(Student)) as Student);
          break;
        case 'schedule':
          result.schedule.replace(serializers.deserialize(value,
              specifiedType: const FullType(Schedule)) as Schedule);
          break;
        case 'attendance':
          result.attendance = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AttendanceRecord extends AttendanceRecord {
  @override
  final Student student;
  @override
  final Schedule schedule;
  @override
  final bool attendance;

  factory _$AttendanceRecord([void updates(AttendanceRecordBuilder b)]) =>
      (new AttendanceRecordBuilder()..update(updates)).build();

  _$AttendanceRecord._({this.student, this.schedule, this.attendance})
      : super._() {
    if (student == null) {
      throw new BuiltValueNullFieldError('AttendanceRecord', 'student');
    }
    if (schedule == null) {
      throw new BuiltValueNullFieldError('AttendanceRecord', 'schedule');
    }
    if (attendance == null) {
      throw new BuiltValueNullFieldError('AttendanceRecord', 'attendance');
    }
  }

  @override
  AttendanceRecord rebuild(void updates(AttendanceRecordBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceRecordBuilder toBuilder() =>
      new AttendanceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendanceRecord &&
        student == other.student &&
        schedule == other.schedule &&
        attendance == other.attendance;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, student.hashCode), schedule.hashCode), attendance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttendanceRecord')
          ..add('student', student)
          ..add('schedule', schedule)
          ..add('attendance', attendance))
        .toString();
  }
}

class AttendanceRecordBuilder
    implements Builder<AttendanceRecord, AttendanceRecordBuilder> {
  _$AttendanceRecord _$v;

  StudentBuilder _student;
  StudentBuilder get student => _$this._student ??= new StudentBuilder();
  set student(StudentBuilder student) => _$this._student = student;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  bool _attendance;
  bool get attendance => _$this._attendance;
  set attendance(bool attendance) => _$this._attendance = attendance;

  AttendanceRecordBuilder();

  AttendanceRecordBuilder get _$this {
    if (_$v != null) {
      _student = _$v.student?.toBuilder();
      _schedule = _$v.schedule?.toBuilder();
      _attendance = _$v.attendance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendanceRecord other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttendanceRecord;
  }

  @override
  void update(void updates(AttendanceRecordBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AttendanceRecord build() {
    _$AttendanceRecord _$result;
    try {
      _$result = _$v ??
          new _$AttendanceRecord._(
              student: student.build(),
              schedule: schedule.build(),
              attendance: attendance);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'student';
        student.build();
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AttendanceRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
