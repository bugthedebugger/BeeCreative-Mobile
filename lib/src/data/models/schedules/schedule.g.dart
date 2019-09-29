// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Schedule> _$scheduleSerializer = new _$ScheduleSerializer();

class _$ScheduleSerializer implements StructuredSerializer<Schedule> {
  @override
  final Iterable<Type> types = const [Schedule, _$Schedule];
  @override
  final String wireName = 'Schedule';

  @override
  Iterable<Object> serialize(Serializers serializers, Schedule object,
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
      'hoursTaught',
      serializers.serialize(object.hoursTaught,
          specifiedType: const FullType(double)),
      'number_of_male',
      serializers.serialize(object.maleCount,
          specifiedType: const FullType(int)),
      'number_of_female',
      serializers.serialize(object.femaleCount,
          specifiedType: const FullType(int)),
      'folder_id',
      serializers.serialize(object.folderId,
          specifiedType: const FullType(String)),
    ];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.deliveryReport != null) {
      result
        ..add('delivery_report')
        ..add(serializers.serialize(object.deliveryReport,
            specifiedType: const FullType(DeliveryReport)));
    }
    return result;
  }

  @override
  Schedule deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleBuilder();

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
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'hoursTaught':
          result.hoursTaught = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'number_of_male':
          result.maleCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number_of_female':
          result.femaleCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'delivery_report':
          result.deliveryReport.replace(serializers.deserialize(value,
              specifiedType: const FullType(DeliveryReport)) as DeliveryReport);
          break;
        case 'folder_id':
          result.folderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Schedule extends Schedule {
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
  final BuiltList<String> comment;
  @override
  final double hoursTaught;
  @override
  final int maleCount;
  @override
  final int femaleCount;
  @override
  final DeliveryReport deliveryReport;
  @override
  final String folderId;

  factory _$Schedule([void Function(ScheduleBuilder) updates]) =>
      (new ScheduleBuilder()..update(updates)).build();

  _$Schedule._(
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
      this.comment,
      this.hoursTaught,
      this.maleCount,
      this.femaleCount,
      this.deliveryReport,
      this.folderId})
      : super._() {
    if (scheduleId == null) {
      throw new BuiltValueNullFieldError('Schedule', 'scheduleId');
    }
    if (startTime == null) {
      throw new BuiltValueNullFieldError('Schedule', 'startTime');
    }
    if (endTime == null) {
      throw new BuiltValueNullFieldError('Schedule', 'endTime');
    }
    if (deliveryDate == null) {
      throw new BuiltValueNullFieldError('Schedule', 'deliveryDate');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('Schedule', 'day');
    }
    if (schoolName == null) {
      throw new BuiltValueNullFieldError('Schedule', 'schoolName');
    }
    if (grade == null) {
      throw new BuiltValueNullFieldError('Schedule', 'grade');
    }
    if (section == null) {
      throw new BuiltValueNullFieldError('Schedule', 'section');
    }
    if (schoolId == null) {
      throw new BuiltValueNullFieldError('Schedule', 'schoolId');
    }
    if (classId == null) {
      throw new BuiltValueNullFieldError('Schedule', 'classId');
    }
    if (hoursTaught == null) {
      throw new BuiltValueNullFieldError('Schedule', 'hoursTaught');
    }
    if (maleCount == null) {
      throw new BuiltValueNullFieldError('Schedule', 'maleCount');
    }
    if (femaleCount == null) {
      throw new BuiltValueNullFieldError('Schedule', 'femaleCount');
    }
    if (folderId == null) {
      throw new BuiltValueNullFieldError('Schedule', 'folderId');
    }
  }

  @override
  Schedule rebuild(void Function(ScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleBuilder toBuilder() => new ScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Schedule &&
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
        comment == other.comment &&
        hoursTaught == other.hoursTaught &&
        maleCount == other.maleCount &&
        femaleCount == other.femaleCount &&
        deliveryReport == other.deliveryReport &&
        folderId == other.folderId;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        scheduleId
                                                                            .hashCode),
                                                                    startTime
                                                                        .hashCode),
                                                                endTime
                                                                    .hashCode),
                                                            deliveryDate
                                                                .hashCode),
                                                        day.hashCode),
                                                    schoolName.hashCode),
                                                content.hashCode),
                                            grade.hashCode),
                                        section.hashCode),
                                    schoolId.hashCode),
                                classId.hashCode),
                            comment.hashCode),
                        hoursTaught.hashCode),
                    maleCount.hashCode),
                femaleCount.hashCode),
            deliveryReport.hashCode),
        folderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Schedule')
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
          ..add('comment', comment)
          ..add('hoursTaught', hoursTaught)
          ..add('maleCount', maleCount)
          ..add('femaleCount', femaleCount)
          ..add('deliveryReport', deliveryReport)
          ..add('folderId', folderId))
        .toString();
  }
}

class ScheduleBuilder implements Builder<Schedule, ScheduleBuilder> {
  _$Schedule _$v;

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

  ListBuilder<String> _comment;
  ListBuilder<String> get comment =>
      _$this._comment ??= new ListBuilder<String>();
  set comment(ListBuilder<String> comment) => _$this._comment = comment;

  double _hoursTaught;
  double get hoursTaught => _$this._hoursTaught;
  set hoursTaught(double hoursTaught) => _$this._hoursTaught = hoursTaught;

  int _maleCount;
  int get maleCount => _$this._maleCount;
  set maleCount(int maleCount) => _$this._maleCount = maleCount;

  int _femaleCount;
  int get femaleCount => _$this._femaleCount;
  set femaleCount(int femaleCount) => _$this._femaleCount = femaleCount;

  DeliveryReportBuilder _deliveryReport;
  DeliveryReportBuilder get deliveryReport =>
      _$this._deliveryReport ??= new DeliveryReportBuilder();
  set deliveryReport(DeliveryReportBuilder deliveryReport) =>
      _$this._deliveryReport = deliveryReport;

  String _folderId;
  String get folderId => _$this._folderId;
  set folderId(String folderId) => _$this._folderId = folderId;

  ScheduleBuilder();

  ScheduleBuilder get _$this {
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
      _comment = _$v.comment?.toBuilder();
      _hoursTaught = _$v.hoursTaught;
      _maleCount = _$v.maleCount;
      _femaleCount = _$v.femaleCount;
      _deliveryReport = _$v.deliveryReport?.toBuilder();
      _folderId = _$v.folderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Schedule other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Schedule;
  }

  @override
  void update(void Function(ScheduleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Schedule build() {
    _$Schedule _$result;
    try {
      _$result = _$v ??
          new _$Schedule._(
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
              comment: _comment?.build(),
              hoursTaught: hoursTaught,
              maleCount: maleCount,
              femaleCount: femaleCount,
              deliveryReport: _deliveryReport?.build(),
              folderId: folderId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        _comment?.build();

        _$failedField = 'deliveryReport';
        _deliveryReport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Schedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
