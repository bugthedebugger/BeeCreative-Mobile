// GENERATED CODE - DO NOT MODIFY BY HAND

part of attendee_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttendeeData> _$attendeeDataSerializer =
    new _$AttendeeDataSerializer();

class _$AttendeeDataSerializer implements StructuredSerializer<AttendeeData> {
  @override
  final Iterable<Type> types = const [AttendeeData, _$AttendeeData];
  @override
  final String wireName = 'AttendeeData';

  @override
  Iterable<Object> serialize(Serializers serializers, AttendeeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'schedule_id',
      serializers.serialize(object.scheduleId,
          specifiedType: const FullType(int)),
      'start_time',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(String)),
      'end_time',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(String)),
      'delivery_date',
      serializers.serialize(object.deliveryDate,
          specifiedType: const FullType(String)),
      'Day',
      serializers.serialize(object.day, specifiedType: const FullType(String)),
      'school_name',
      serializers.serialize(object.schoolName,
          specifiedType: const FullType(String)),
      'class_name',
      serializers.serialize(object.grade,
          specifiedType: const FullType(String)),
      'section',
      serializers.serialize(object.section,
          specifiedType: const FullType(String)),
      'school_id',
      serializers.serialize(object.schoolId,
          specifiedType: const FullType(int)),
      'class_id',
      serializers.serialize(object.classId, specifiedType: const FullType(int)),
    ];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.teacherId != null) {
      result
        ..add('tacher_id')
        ..add(serializers.serialize(object.teacherId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AttendeeData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendeeDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'schedule_id':
          result.scheduleId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_date':
          result.deliveryDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'school_name':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class_name':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
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
        case 'tacher_id':
          result.teacherId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AttendeeData extends AttendeeData {
  @override
  final int scheduleId;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String deliveryDate;
  @override
  final String day;
  @override
  final String schoolName;
  @override
  final String content;
  @override
  final String grade;
  @override
  final String section;
  @override
  final int schoolId;
  @override
  final int classId;
  @override
  final int teacherId;

  factory _$AttendeeData([void Function(AttendeeDataBuilder) updates]) =>
      (new AttendeeDataBuilder()..update(updates)).build();

  _$AttendeeData._(
      {this.scheduleId,
      this.startTime,
      this.endTime,
      this.deliveryDate,
      this.day,
      this.schoolName,
      this.content,
      this.grade,
      this.section,
      this.schoolId,
      this.classId,
      this.teacherId})
      : super._() {
    if (scheduleId == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'scheduleId');
    }
    if (startTime == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'startTime');
    }
    if (endTime == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'endTime');
    }
    if (deliveryDate == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'deliveryDate');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'day');
    }
    if (schoolName == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'schoolName');
    }
    if (grade == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'grade');
    }
    if (section == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'section');
    }
    if (schoolId == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'schoolId');
    }
    if (classId == null) {
      throw new BuiltValueNullFieldError('AttendeeData', 'classId');
    }
  }

  @override
  AttendeeData rebuild(void Function(AttendeeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendeeDataBuilder toBuilder() => new AttendeeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendeeData &&
        scheduleId == other.scheduleId &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        deliveryDate == other.deliveryDate &&
        day == other.day &&
        schoolName == other.schoolName &&
        content == other.content &&
        grade == other.grade &&
        section == other.section &&
        schoolId == other.schoolId &&
        classId == other.classId &&
        teacherId == other.teacherId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, scheduleId.hashCode),
                                                startTime.hashCode),
                                            endTime.hashCode),
                                        deliveryDate.hashCode),
                                    day.hashCode),
                                schoolName.hashCode),
                            content.hashCode),
                        grade.hashCode),
                    section.hashCode),
                schoolId.hashCode),
            classId.hashCode),
        teacherId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttendeeData')
          ..add('scheduleId', scheduleId)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('deliveryDate', deliveryDate)
          ..add('day', day)
          ..add('schoolName', schoolName)
          ..add('content', content)
          ..add('grade', grade)
          ..add('section', section)
          ..add('schoolId', schoolId)
          ..add('classId', classId)
          ..add('teacherId', teacherId))
        .toString();
  }
}

class AttendeeDataBuilder
    implements Builder<AttendeeData, AttendeeDataBuilder> {
  _$AttendeeData _$v;

  int _scheduleId;
  int get scheduleId => _$this._scheduleId;
  set scheduleId(int scheduleId) => _$this._scheduleId = scheduleId;

  String _startTime;
  String get startTime => _$this._startTime;
  set startTime(String startTime) => _$this._startTime = startTime;

  String _endTime;
  String get endTime => _$this._endTime;
  set endTime(String endTime) => _$this._endTime = endTime;

  String _deliveryDate;
  String get deliveryDate => _$this._deliveryDate;
  set deliveryDate(String deliveryDate) => _$this._deliveryDate = deliveryDate;

  String _day;
  String get day => _$this._day;
  set day(String day) => _$this._day = day;

  String _schoolName;
  String get schoolName => _$this._schoolName;
  set schoolName(String schoolName) => _$this._schoolName = schoolName;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _grade;
  String get grade => _$this._grade;
  set grade(String grade) => _$this._grade = grade;

  String _section;
  String get section => _$this._section;
  set section(String section) => _$this._section = section;

  int _schoolId;
  int get schoolId => _$this._schoolId;
  set schoolId(int schoolId) => _$this._schoolId = schoolId;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  int _teacherId;
  int get teacherId => _$this._teacherId;
  set teacherId(int teacherId) => _$this._teacherId = teacherId;

  AttendeeDataBuilder();

  AttendeeDataBuilder get _$this {
    if (_$v != null) {
      _scheduleId = _$v.scheduleId;
      _startTime = _$v.startTime;
      _endTime = _$v.endTime;
      _deliveryDate = _$v.deliveryDate;
      _day = _$v.day;
      _schoolName = _$v.schoolName;
      _content = _$v.content;
      _grade = _$v.grade;
      _section = _$v.section;
      _schoolId = _$v.schoolId;
      _classId = _$v.classId;
      _teacherId = _$v.teacherId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendeeData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttendeeData;
  }

  @override
  void update(void Function(AttendeeDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttendeeData build() {
    final _$result = _$v ??
        new _$AttendeeData._(
            scheduleId: scheduleId,
            startTime: startTime,
            endTime: endTime,
            deliveryDate: deliveryDate,
            day: day,
            schoolName: schoolName,
            content: content,
            grade: grade,
            section: section,
            schoolId: schoolId,
            classId: classId,
            teacherId: teacherId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
