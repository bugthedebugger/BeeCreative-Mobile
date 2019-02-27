// GENERATED CODE - DO NOT MODIFY BY HAND

part of delivery_report_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassDeliveredEvent extends ClassDeliveredEvent {
  @override
  final Schedule schedule;
  @override
  final int rating;
  @override
  final bool delivered;

  factory _$ClassDeliveredEvent([void updates(ClassDeliveredEventBuilder b)]) =>
      (new ClassDeliveredEventBuilder()..update(updates)).build();

  _$ClassDeliveredEvent._({this.schedule, this.rating, this.delivered})
      : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'schedule');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'rating');
    }
    if (delivered == null) {
      throw new BuiltValueNullFieldError('ClassDeliveredEvent', 'delivered');
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
        rating == other.rating &&
        delivered == other.delivered;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, schedule.hashCode), rating.hashCode), delivered.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassDeliveredEvent')
          ..add('schedule', schedule)
          ..add('rating', rating)
          ..add('delivered', delivered))
        .toString();
  }
}

class ClassDeliveredEventBuilder
    implements Builder<ClassDeliveredEvent, ClassDeliveredEventBuilder> {
  _$ClassDeliveredEvent _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  bool _delivered;
  bool get delivered => _$this._delivered;
  set delivered(bool delivered) => _$this._delivered = delivered;

  ClassDeliveredEventBuilder();

  ClassDeliveredEventBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _rating = _$v.rating;
      _delivered = _$v.delivered;
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
              schedule: schedule.build(), rating: rating, delivered: delivered);
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
  final String comment;
  @override
  final bool delivered;

  factory _$ClassCancelledEvent([void updates(ClassCancelledEventBuilder b)]) =>
      (new ClassCancelledEventBuilder()..update(updates)).build();

  _$ClassCancelledEvent._({this.schedule, this.comment, this.delivered})
      : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'schedule');
    }
    if (comment == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'comment');
    }
    if (delivered == null) {
      throw new BuiltValueNullFieldError('ClassCancelledEvent', 'delivered');
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
        comment == other.comment &&
        delivered == other.delivered;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, schedule.hashCode), comment.hashCode), delivered.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassCancelledEvent')
          ..add('schedule', schedule)
          ..add('comment', comment)
          ..add('delivered', delivered))
        .toString();
  }
}

class ClassCancelledEventBuilder
    implements Builder<ClassCancelledEvent, ClassCancelledEventBuilder> {
  _$ClassCancelledEvent _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  bool _delivered;
  bool get delivered => _$this._delivered;
  set delivered(bool delivered) => _$this._delivered = delivered;

  ClassCancelledEventBuilder();

  ClassCancelledEventBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _comment = _$v.comment;
      _delivered = _$v.delivered;
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
              comment: comment,
              delivered: delivered);
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

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
