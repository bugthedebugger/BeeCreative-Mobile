// GENERATED CODE - DO NOT MODIFY BY HAND

part of attendance_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitAttendance extends SubmitAttendance {
  @override
  final Attendance attendance;

  factory _$SubmitAttendance(
          [void Function(SubmitAttendanceBuilder) updates]) =>
      (new SubmitAttendanceBuilder()..update(updates)).build();

  _$SubmitAttendance._({this.attendance}) : super._() {
    if (attendance == null) {
      throw new BuiltValueNullFieldError('SubmitAttendance', 'attendance');
    }
  }

  @override
  SubmitAttendance rebuild(void Function(SubmitAttendanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitAttendanceBuilder toBuilder() =>
      new SubmitAttendanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitAttendance && attendance == other.attendance;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attendance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubmitAttendance')
          ..add('attendance', attendance))
        .toString();
  }
}

class SubmitAttendanceBuilder
    implements Builder<SubmitAttendance, SubmitAttendanceBuilder> {
  _$SubmitAttendance _$v;

  AttendanceBuilder _attendance;
  AttendanceBuilder get attendance =>
      _$this._attendance ??= new AttendanceBuilder();
  set attendance(AttendanceBuilder attendance) =>
      _$this._attendance = attendance;

  SubmitAttendanceBuilder();

  SubmitAttendanceBuilder get _$this {
    if (_$v != null) {
      _attendance = _$v.attendance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitAttendance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubmitAttendance;
  }

  @override
  void update(void Function(SubmitAttendanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubmitAttendance build() {
    _$SubmitAttendance _$result;
    try {
      _$result =
          _$v ?? new _$SubmitAttendance._(attendance: attendance.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attendance';
        attendance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubmitAttendance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateAttendance extends UpdateAttendance {
  @override
  final Attendance attendance;

  factory _$UpdateAttendance(
          [void Function(UpdateAttendanceBuilder) updates]) =>
      (new UpdateAttendanceBuilder()..update(updates)).build();

  _$UpdateAttendance._({this.attendance}) : super._() {
    if (attendance == null) {
      throw new BuiltValueNullFieldError('UpdateAttendance', 'attendance');
    }
  }

  @override
  UpdateAttendance rebuild(void Function(UpdateAttendanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAttendanceBuilder toBuilder() =>
      new UpdateAttendanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAttendance && attendance == other.attendance;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attendance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateAttendance')
          ..add('attendance', attendance))
        .toString();
  }
}

class UpdateAttendanceBuilder
    implements Builder<UpdateAttendance, UpdateAttendanceBuilder> {
  _$UpdateAttendance _$v;

  AttendanceBuilder _attendance;
  AttendanceBuilder get attendance =>
      _$this._attendance ??= new AttendanceBuilder();
  set attendance(AttendanceBuilder attendance) =>
      _$this._attendance = attendance;

  UpdateAttendanceBuilder();

  UpdateAttendanceBuilder get _$this {
    if (_$v != null) {
      _attendance = _$v.attendance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAttendance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateAttendance;
  }

  @override
  void update(void Function(UpdateAttendanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateAttendance build() {
    _$UpdateAttendance _$result;
    try {
      _$result =
          _$v ?? new _$UpdateAttendance._(attendance: attendance.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attendance';
        attendance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateAttendance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PrepareAttendance extends PrepareAttendance {
  @override
  final Attendance attendance;

  factory _$PrepareAttendance(
          [void Function(PrepareAttendanceBuilder) updates]) =>
      (new PrepareAttendanceBuilder()..update(updates)).build();

  _$PrepareAttendance._({this.attendance}) : super._() {
    if (attendance == null) {
      throw new BuiltValueNullFieldError('PrepareAttendance', 'attendance');
    }
  }

  @override
  PrepareAttendance rebuild(void Function(PrepareAttendanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareAttendanceBuilder toBuilder() =>
      new PrepareAttendanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareAttendance && attendance == other.attendance;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attendance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrepareAttendance')
          ..add('attendance', attendance))
        .toString();
  }
}

class PrepareAttendanceBuilder
    implements Builder<PrepareAttendance, PrepareAttendanceBuilder> {
  _$PrepareAttendance _$v;

  AttendanceBuilder _attendance;
  AttendanceBuilder get attendance =>
      _$this._attendance ??= new AttendanceBuilder();
  set attendance(AttendanceBuilder attendance) =>
      _$this._attendance = attendance;

  PrepareAttendanceBuilder();

  PrepareAttendanceBuilder get _$this {
    if (_$v != null) {
      _attendance = _$v.attendance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrepareAttendance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrepareAttendance;
  }

  @override
  void update(void Function(PrepareAttendanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrepareAttendance build() {
    _$PrepareAttendance _$result;
    try {
      _$result =
          _$v ?? new _$PrepareAttendance._(attendance: attendance.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attendance';
        attendance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PrepareAttendance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Success extends Success {
  factory _$Success([void Function(SuccessBuilder) updates]) =>
      (new SuccessBuilder()..update(updates)).build();

  _$Success._() : super._();

  @override
  Success rebuild(void Function(SuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessBuilder toBuilder() => new SuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Success;
  }

  @override
  int get hashCode {
    return 496694575;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Success').toString();
  }
}

class SuccessBuilder implements Builder<Success, SuccessBuilder> {
  _$Success _$v;

  SuccessBuilder();

  @override
  void replace(Success other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Success;
  }

  @override
  void update(void Function(SuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Success build() {
    final _$result = _$v ?? new _$Success._();
    replace(_$result);
    return _$result;
  }
}

class _$Error extends Error {
  @override
  final String message;

  factory _$Error([void Function(ErrorBuilder) updates]) =>
      (new ErrorBuilder()..update(updates)).build();

  _$Error._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('Error', 'message');
    }
  }

  @override
  Error rebuild(void Function(ErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorBuilder toBuilder() => new ErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Error && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Error')..add('message', message))
        .toString();
  }
}

class ErrorBuilder implements Builder<Error, ErrorBuilder> {
  _$Error _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ErrorBuilder();

  ErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Error other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Error;
  }

  @override
  void update(void Function(ErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Error build() {
    final _$result = _$v ?? new _$Error._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$SubmittingAttendance extends SubmittingAttendance {
  factory _$SubmittingAttendance(
          [void Function(SubmittingAttendanceBuilder) updates]) =>
      (new SubmittingAttendanceBuilder()..update(updates)).build();

  _$SubmittingAttendance._() : super._();

  @override
  SubmittingAttendance rebuild(
          void Function(SubmittingAttendanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmittingAttendanceBuilder toBuilder() =>
      new SubmittingAttendanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmittingAttendance;
  }

  @override
  int get hashCode {
    return 673185515;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SubmittingAttendance').toString();
  }
}

class SubmittingAttendanceBuilder
    implements Builder<SubmittingAttendance, SubmittingAttendanceBuilder> {
  _$SubmittingAttendance _$v;

  SubmittingAttendanceBuilder();

  @override
  void replace(SubmittingAttendance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubmittingAttendance;
  }

  @override
  void update(void Function(SubmittingAttendanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubmittingAttendance build() {
    final _$result = _$v ?? new _$SubmittingAttendance._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
