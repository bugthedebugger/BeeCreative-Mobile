// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule_response_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScheduleResponseData> _$scheduleResponseDataSerializer =
    new _$ScheduleResponseDataSerializer();

class _$ScheduleResponseDataSerializer
    implements StructuredSerializer<ScheduleResponseData> {
  @override
  final Iterable<Type> types = const [
    ScheduleResponseData,
    _$ScheduleResponseData
  ];
  @override
  final String wireName = 'ScheduleResponseData';

  @override
  Iterable serialize(Serializers serializers, ScheduleResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'class_id',
      serializers.serialize(object.classId, specifiedType: const FullType(int)),
      'Class',
      serializers.serialize(object.grade,
          specifiedType: const FullType(String)),
      'section',
      serializers.serialize(object.section,
          specifiedType: const FullType(String)),
      'School_id',
      serializers.serialize(object.schoolId,
          specifiedType: const FullType(int)),
      'school_name',
      serializers.serialize(object.schoolName,
          specifiedType: const FullType(String)),
    ];
    if (object.students != null) {
      result
        ..add('students')
        ..add(serializers.serialize(object.students,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Student)])));
    }

    return result;
  }

  @override
  ScheduleResponseData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'class_id':
          result.classId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Class':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'School_id':
          result.schoolId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'school_name':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'students':
          result.students.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Student)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ScheduleResponseData extends ScheduleResponseData {
  @override
  final int classId;
  @override
  final String grade;
  @override
  final String section;
  @override
  final int schoolId;
  @override
  final String schoolName;
  @override
  final BuiltList<Student> students;

  factory _$ScheduleResponseData(
          [void updates(ScheduleResponseDataBuilder b)]) =>
      (new ScheduleResponseDataBuilder()..update(updates)).build();

  _$ScheduleResponseData._(
      {this.classId,
      this.grade,
      this.section,
      this.schoolId,
      this.schoolName,
      this.students})
      : super._() {
    if (classId == null) {
      throw new BuiltValueNullFieldError('ScheduleResponseData', 'classId');
    }
    if (grade == null) {
      throw new BuiltValueNullFieldError('ScheduleResponseData', 'grade');
    }
    if (section == null) {
      throw new BuiltValueNullFieldError('ScheduleResponseData', 'section');
    }
    if (schoolId == null) {
      throw new BuiltValueNullFieldError('ScheduleResponseData', 'schoolId');
    }
    if (schoolName == null) {
      throw new BuiltValueNullFieldError('ScheduleResponseData', 'schoolName');
    }
  }

  @override
  ScheduleResponseData rebuild(void updates(ScheduleResponseDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleResponseDataBuilder toBuilder() =>
      new ScheduleResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleResponseData &&
        classId == other.classId &&
        grade == other.grade &&
        section == other.section &&
        schoolId == other.schoolId &&
        schoolName == other.schoolName &&
        students == other.students;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, classId.hashCode), grade.hashCode),
                    section.hashCode),
                schoolId.hashCode),
            schoolName.hashCode),
        students.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScheduleResponseData')
          ..add('classId', classId)
          ..add('grade', grade)
          ..add('section', section)
          ..add('schoolId', schoolId)
          ..add('schoolName', schoolName)
          ..add('students', students))
        .toString();
  }
}

class ScheduleResponseDataBuilder
    implements Builder<ScheduleResponseData, ScheduleResponseDataBuilder> {
  _$ScheduleResponseData _$v;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  String _grade;
  String get grade => _$this._grade;
  set grade(String grade) => _$this._grade = grade;

  String _section;
  String get section => _$this._section;
  set section(String section) => _$this._section = section;

  int _schoolId;
  int get schoolId => _$this._schoolId;
  set schoolId(int schoolId) => _$this._schoolId = schoolId;

  String _schoolName;
  String get schoolName => _$this._schoolName;
  set schoolName(String schoolName) => _$this._schoolName = schoolName;

  ListBuilder<Student> _students;
  ListBuilder<Student> get students =>
      _$this._students ??= new ListBuilder<Student>();
  set students(ListBuilder<Student> students) => _$this._students = students;

  ScheduleResponseDataBuilder();

  ScheduleResponseDataBuilder get _$this {
    if (_$v != null) {
      _classId = _$v.classId;
      _grade = _$v.grade;
      _section = _$v.section;
      _schoolId = _$v.schoolId;
      _schoolName = _$v.schoolName;
      _students = _$v.students?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScheduleResponseData;
  }

  @override
  void update(void updates(ScheduleResponseDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScheduleResponseData build() {
    _$ScheduleResponseData _$result;
    try {
      _$result = _$v ??
          new _$ScheduleResponseData._(
              classId: classId,
              grade: grade,
              section: section,
              schoolId: schoolId,
              schoolName: schoolName,
              students: _students?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'students';
        _students?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScheduleResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
