// GENERATED CODE - DO NOT MODIFY BY HAND

part of student;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Student> _$studentSerializer = new _$StudentSerializer();

class _$StudentSerializer implements StructuredSerializer<Student> {
  @override
  final Iterable<Type> types = const [Student, _$Student];
  @override
  final String wireName = 'Student';

  @override
  Iterable serialize(Serializers serializers, Student object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'student_id',
      serializers.serialize(object.studentId,
          specifiedType: const FullType(int)),
      'student_fname',
      serializers.serialize(object.fname,
          specifiedType: const FullType(String)),
      'student_lname',
      serializers.serialize(object.lname,
          specifiedType: const FullType(String)),
      'school_id',
      serializers.serialize(object.schoolId,
          specifiedType: const FullType(int)),
      'class_id',
      serializers.serialize(object.classId, specifiedType: const FullType(int)),
      'SchoolName',
      serializers.serialize(object.schoolName,
          specifiedType: const FullType(String)),
      'class',
      serializers.serialize(object.grade,
          specifiedType: const FullType(String)),
      'section',
      serializers.serialize(object.section,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Student deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'student_id':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'student_fname':
          result.fname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'student_lname':
          result.lname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'school_id':
          result.schoolId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'class_id':
          result.classId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'SchoolName':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Student extends Student {
  @override
  final int studentId;
  @override
  final String fname;
  @override
  final String lname;
  @override
  final int schoolId;
  @override
  final int classId;
  @override
  final String schoolName;
  @override
  final String grade;
  @override
  final String section;
  @override
  final String gender;

  factory _$Student([void updates(StudentBuilder b)]) =>
      (new StudentBuilder()..update(updates)).build();

  _$Student._(
      {this.studentId,
      this.fname,
      this.lname,
      this.schoolId,
      this.classId,
      this.schoolName,
      this.grade,
      this.section,
      this.gender})
      : super._() {
    if (studentId == null) {
      throw new BuiltValueNullFieldError('Student', 'studentId');
    }
    if (fname == null) {
      throw new BuiltValueNullFieldError('Student', 'fname');
    }
    if (lname == null) {
      throw new BuiltValueNullFieldError('Student', 'lname');
    }
    if (schoolId == null) {
      throw new BuiltValueNullFieldError('Student', 'schoolId');
    }
    if (classId == null) {
      throw new BuiltValueNullFieldError('Student', 'classId');
    }
    if (schoolName == null) {
      throw new BuiltValueNullFieldError('Student', 'schoolName');
    }
    if (grade == null) {
      throw new BuiltValueNullFieldError('Student', 'grade');
    }
    if (section == null) {
      throw new BuiltValueNullFieldError('Student', 'section');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('Student', 'gender');
    }
  }

  @override
  Student rebuild(void updates(StudentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentBuilder toBuilder() => new StudentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Student &&
        studentId == other.studentId &&
        fname == other.fname &&
        lname == other.lname &&
        schoolId == other.schoolId &&
        classId == other.classId &&
        schoolName == other.schoolName &&
        grade == other.grade &&
        section == other.section &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, studentId.hashCode), fname.hashCode),
                                lname.hashCode),
                            schoolId.hashCode),
                        classId.hashCode),
                    schoolName.hashCode),
                grade.hashCode),
            section.hashCode),
        gender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Student')
          ..add('studentId', studentId)
          ..add('fname', fname)
          ..add('lname', lname)
          ..add('schoolId', schoolId)
          ..add('classId', classId)
          ..add('schoolName', schoolName)
          ..add('grade', grade)
          ..add('section', section)
          ..add('gender', gender))
        .toString();
  }
}

class StudentBuilder implements Builder<Student, StudentBuilder> {
  _$Student _$v;

  int _studentId;
  int get studentId => _$this._studentId;
  set studentId(int studentId) => _$this._studentId = studentId;

  String _fname;
  String get fname => _$this._fname;
  set fname(String fname) => _$this._fname = fname;

  String _lname;
  String get lname => _$this._lname;
  set lname(String lname) => _$this._lname = lname;

  int _schoolId;
  int get schoolId => _$this._schoolId;
  set schoolId(int schoolId) => _$this._schoolId = schoolId;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  String _schoolName;
  String get schoolName => _$this._schoolName;
  set schoolName(String schoolName) => _$this._schoolName = schoolName;

  String _grade;
  String get grade => _$this._grade;
  set grade(String grade) => _$this._grade = grade;

  String _section;
  String get section => _$this._section;
  set section(String section) => _$this._section = section;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  StudentBuilder();

  StudentBuilder get _$this {
    if (_$v != null) {
      _studentId = _$v.studentId;
      _fname = _$v.fname;
      _lname = _$v.lname;
      _schoolId = _$v.schoolId;
      _classId = _$v.classId;
      _schoolName = _$v.schoolName;
      _grade = _$v.grade;
      _section = _$v.section;
      _gender = _$v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Student other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Student;
  }

  @override
  void update(void updates(StudentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Student build() {
    final _$result = _$v ??
        new _$Student._(
            studentId: studentId,
            fname: fname,
            lname: lname,
            schoolId: schoolId,
            classId: classId,
            schoolName: schoolName,
            grade: grade,
            section: section,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
