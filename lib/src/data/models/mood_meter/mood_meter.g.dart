// GENERATED CODE - DO NOT MODIFY BY HAND

part of mood_meter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoodMeter> _$moodMeterSerializer = new _$MoodMeterSerializer();

class _$MoodMeterSerializer implements StructuredSerializer<MoodMeter> {
  @override
  final Iterable<Type> types = const [MoodMeter, _$MoodMeter];
  @override
  final String wireName = 'MoodMeter';

  @override
  Iterable<Object> serialize(Serializers serializers, MoodMeter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mood_id',
      serializers.serialize(object.moodID, specifiedType: const FullType(int)),
      'user_id',
      serializers.serialize(object.userID, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MoodMeter deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoodMeterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mood_id':
          result.moodID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_id':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MoodMeter extends MoodMeter {
  @override
  final int moodID;
  @override
  final int userID;
  @override
  final int id;

  factory _$MoodMeter([void Function(MoodMeterBuilder) updates]) =>
      (new MoodMeterBuilder()..update(updates)).build();

  _$MoodMeter._({this.moodID, this.userID, this.id}) : super._() {
    if (moodID == null) {
      throw new BuiltValueNullFieldError('MoodMeter', 'moodID');
    }
    if (userID == null) {
      throw new BuiltValueNullFieldError('MoodMeter', 'userID');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('MoodMeter', 'id');
    }
  }

  @override
  MoodMeter rebuild(void Function(MoodMeterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoodMeterBuilder toBuilder() => new MoodMeterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoodMeter &&
        moodID == other.moodID &&
        userID == other.userID &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, moodID.hashCode), userID.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoodMeter')
          ..add('moodID', moodID)
          ..add('userID', userID)
          ..add('id', id))
        .toString();
  }
}

class MoodMeterBuilder implements Builder<MoodMeter, MoodMeterBuilder> {
  _$MoodMeter _$v;

  int _moodID;
  int get moodID => _$this._moodID;
  set moodID(int moodID) => _$this._moodID = moodID;

  int _userID;
  int get userID => _$this._userID;
  set userID(int userID) => _$this._userID = userID;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  MoodMeterBuilder();

  MoodMeterBuilder get _$this {
    if (_$v != null) {
      _moodID = _$v.moodID;
      _userID = _$v.userID;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoodMeter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoodMeter;
  }

  @override
  void update(void Function(MoodMeterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoodMeter build() {
    final _$result =
        _$v ?? new _$MoodMeter._(moodID: moodID, userID: userID, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
