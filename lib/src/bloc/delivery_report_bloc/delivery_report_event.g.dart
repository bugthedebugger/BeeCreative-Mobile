// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_report_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassDeliveredEvent extends ClassDeliveredEvent {
  @override
  final Schedule schedule;
  @override
  final String token;
  @override
  final bool delivered;
  @override
  final int rating;

  factory _$ClassDeliveredEvent([void updates(ClassDeliveredEventBuilder b)]) =>
      (new ClassDeliveredEventBuilder()..update(updates)).build();

  _$ClassDeliveredEvent._(
      {this.schedule, this.token, this.delivered, this.rating})
      : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'schedule');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'token');
    }
    if (delivered == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'delivered');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'rating');
    }
  }

  @override
  ClassDeliveredEvent rebuild(void updates(ClassDeliveredEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassDeliveredEventBuilder toBuilder() =>
      new ClassDeliveredEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassDeliveredEvent &&
        schedule == other.schedule &&
        token == other.token &&
        delivered == other.delivered &&
        rating == other.rating;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, schedule.hashCode), token.hashCode), delivered.hashCode),
        rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassDeliveredEvent')
          ..add('schedule', schedule)
          ..add('token', token)
          ..add('delivered', delivered)
          ..add('rating', rating))
        .toString();
  }
}

class ClassDeliveredEventBuilder
    implements Builder<ClassDeliveredEvent, ClassDeliveredEventBuilder> {
  _$ClassDeliveredEvent _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  bool _delivered;
  bool get delivered => _$this._delivered;
  set delivered(bool delivered) => _$this._delivered = delivered;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  ClassDeliveredEventBuilder();

  ClassDeliveredEventBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _token = _$v.token;
      _delivered = _$v.delivered;
      _rating = _$v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassDeliveredEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClassDeliveredEvent;
  }

  @override
  void update(void updates(ClassDeliveredEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassDeliveredEvent build() {
    _$ClassDeliveredEvent _$result;
    try {
      _$result = _$v ??
          new _$ClassDeliveredEvent._(
              schedule: schedule.build(),
              token: token,
              delivered: delivered,
              rating: rating);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClassDeliveredEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ClassCancelledEvent extends ClassCancelledEvent {
  @override
  final Schedule schedule;
  @override
  final String token;
  @override
  final bool delivered;
  @override
  final String comment;

  factory _$ClassCancelledEvent([void updates(ClassCancelledEventBuilder b)]) =>
      (new ClassCancelledEventBuilder()..update(updates)).build();

  _$ClassCancelledEvent._(
      {this.schedule, this.token, this.delivered, this.comment})
      : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'schedule');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'token');
    }
    if (delivered == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'delivered');
    }
    if (comment == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'comment');
    }
  }

  @override
  ClassCancelledEvent rebuild(void updates(ClassCancelledEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassCancelledEventBuilder toBuilder() =>
      new ClassCancelledEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassCancelledEvent &&
        schedule == other.schedule &&
        token == other.token &&
        delivered == other.delivered &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, schedule.hashCode), token.hashCode), delivered.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassCancelledEvent')
          ..add('schedule', schedule)
          ..add('token', token)
          ..add('delivered', delivered)
          ..add('comment', comment))
        .toString();
  }
}

class ClassCancelledEventBuilder
    implements Builder<ClassCancelledEvent, ClassCancelledEventBuilder> {
  _$ClassCancelledEvent _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  bool _delivered;
  bool get delivered => _$this._delivered;
  set delivered(bool delivered) => _$this._delivered = delivered;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  ClassCancelledEventBuilder();

  ClassCancelledEventBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _token = _$v.token;
      _delivered = _$v.delivered;
      _comment = _$v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassCancelledEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClassCancelledEvent;
  }

  @override
  void update(void updates(ClassCancelledEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassCancelledEvent build() {
    _$ClassCancelledEvent _$result;
    try {
      _$result = _$v ??
          new _$ClassCancelledEvent._(
              schedule: schedule.build(),
              token: token,
              delivered: delivered,
              comment: comment);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClassCancelledEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SumbittingReportEvent extends SumbittingReportEvent {
  factory _$SumbittingReportEvent(
          [void updates(SumbittingReportEventBuilder b)]) =>
      (new SumbittingReportEventBuilder()..update(updates)).build();

  _$SumbittingReportEvent._() : super._();

  @override
  SumbittingReportEvent rebuild(void updates(SumbittingReportEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SumbittingReportEventBuilder toBuilder() =>
      new SumbittingReportEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SumbittingReportEvent;
  }

  @override
  int get hashCode {
    return 489175788;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SumbittingReportEvent').toString();
  }
}

class SumbittingReportEventBuilder
    implements Builder<SumbittingReportEvent, SumbittingReportEventBuilder> {
  _$SumbittingReportEvent _$v;

  SumbittingReportEventBuilder();

  @override
  void replace(SumbittingReportEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SumbittingReportEvent;
  }

  @override
  void update(void updates(SumbittingReportEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SumbittingReportEvent build() {
    final _$result = _$v ?? new _$SumbittingReportEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$DeliveryReportError extends DeliveryReportError {
  @override
  final String message;

  factory _$DeliveryReportError([void updates(DeliveryReportErrorBuilder b)]) =>
      (new DeliveryReportErrorBuilder()..update(updates)).build();

  _$DeliveryReportError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('DeliveryReportError', 'message');
    }
  }

  @override
  DeliveryReportError rebuild(void updates(DeliveryReportErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryReportErrorBuilder toBuilder() =>
      new DeliveryReportErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryReportError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryReportError')
          ..add('message', message))
        .toString();
  }
}

class DeliveryReportErrorBuilder
    implements Builder<DeliveryReportError, DeliveryReportErrorBuilder> {
  _$DeliveryReportError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DeliveryReportErrorBuilder();

  DeliveryReportErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryReportError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryReportError;
  }

  @override
  void update(void updates(DeliveryReportErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryReportError build() {
    final _$result = _$v ?? new _$DeliveryReportError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$DeliveryReportSubmitted extends DeliveryReportSubmitted {
  factory _$DeliveryReportSubmitted(
          [void updates(DeliveryReportSubmittedBuilder b)]) =>
      (new DeliveryReportSubmittedBuilder()..update(updates)).build();

  _$DeliveryReportSubmitted._() : super._();

  @override
  DeliveryReportSubmitted rebuild(
          void updates(DeliveryReportSubmittedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryReportSubmittedBuilder toBuilder() =>
      new DeliveryReportSubmittedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryReportSubmitted;
  }

  @override
  int get hashCode {
    return 967028087;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DeliveryReportSubmitted').toString();
  }
}

class DeliveryReportSubmittedBuilder
    implements
        Builder<DeliveryReportSubmitted, DeliveryReportSubmittedBuilder> {
  _$DeliveryReportSubmitted _$v;

  DeliveryReportSubmittedBuilder();

  @override
  void replace(DeliveryReportSubmitted other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryReportSubmitted;
  }

  @override
  void update(void updates(DeliveryReportSubmittedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryReportSubmitted build() {
    final _$result = _$v ?? new _$DeliveryReportSubmitted._();
    replace(_$result);
    return _$result;
  }
}

class _$SubmittingReport extends SubmittingReport {
  factory _$SubmittingReport([void updates(SubmittingReportBuilder b)]) =>
      (new SubmittingReportBuilder()..update(updates)).build();

  _$SubmittingReport._() : super._();

  @override
  SubmittingReport rebuild(void updates(SubmittingReportBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmittingReportBuilder toBuilder() =>
      new SubmittingReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmittingReport;
  }

  @override
  int get hashCode {
    return 677680922;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SubmittingReport').toString();
  }
}

class SubmittingReportBuilder
    implements Builder<SubmittingReport, SubmittingReportBuilder> {
  _$SubmittingReport _$v;

  SubmittingReportBuilder();

  @override
  void replace(SubmittingReport other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubmittingReport;
  }

  @override
  void update(void updates(SubmittingReportBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SubmittingReport build() {
    final _$result = _$v ?? new _$SubmittingReport._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
