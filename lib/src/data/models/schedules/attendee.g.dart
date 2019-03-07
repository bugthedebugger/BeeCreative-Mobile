// GENERATED CODE - DO NOT MODIFY BY HAND

part of attendee;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Attendee> _$attendeeSerializer = new _$AttendeeSerializer();

class _$AttendeeSerializer implements StructuredSerializer<Attendee> {
  @override
  final Iterable<Type> types = const [Attendee, _$Attendee];
  @override
  final String wireName = 'Attendee';

  @override
  Iterable serialize(Serializers serializers, Attendee object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AttendeeData)])),
      'is_attendee',
      serializers.serialize(object.isAttendee,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Attendee deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendeeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttendeeData)]))
              as BuiltList);
          break;
        case 'is_attendee':
          result.isAttendee = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Attendee extends Attendee {
  @override
  final BuiltList<AttendeeData> data;
  @override
  final bool isAttendee;

  factory _$Attendee([void updates(AttendeeBuilder b)]) =>
      (new AttendeeBuilder()..update(updates)).build();

  _$Attendee._({this.data, this.isAttendee}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Attendee', 'data');
    }
    if (isAttendee == null) {
      throw new BuiltValueNullFieldError('Attendee', 'isAttendee');
    }
  }

  @override
  Attendee rebuild(void updates(AttendeeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendeeBuilder toBuilder() => new AttendeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attendee &&
        data == other.data &&
        isAttendee == other.isAttendee;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), isAttendee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attendee')
          ..add('data', data)
          ..add('isAttendee', isAttendee))
        .toString();
  }
}

class AttendeeBuilder implements Builder<Attendee, AttendeeBuilder> {
  _$Attendee _$v;

  ListBuilder<AttendeeData> _data;
  ListBuilder<AttendeeData> get data =>
      _$this._data ??= new ListBuilder<AttendeeData>();
  set data(ListBuilder<AttendeeData> data) => _$this._data = data;

  bool _isAttendee;
  bool get isAttendee => _$this._isAttendee;
  set isAttendee(bool isAttendee) => _$this._isAttendee = isAttendee;

  AttendeeBuilder();

  AttendeeBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _isAttendee = _$v.isAttendee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attendee other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attendee;
  }

  @override
  void update(void updates(AttendeeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Attendee build() {
    _$Attendee _$result;
    try {
      _$result =
          _$v ?? new _$Attendee._(data: data.build(), isAttendee: isAttendee);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Attendee', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
