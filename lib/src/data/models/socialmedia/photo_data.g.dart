// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhotoData> _$photoDataSerializer = new _$PhotoDataSerializer();

class _$PhotoDataSerializer implements StructuredSerializer<PhotoData> {
  @override
  final Iterable<Type> types = const [PhotoData, _$PhotoData];
  @override
  final String wireName = 'PhotoData';

  @override
  Iterable<Object> serialize(Serializers serializers, PhotoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'drive_id',
      serializers.serialize(object.driveId,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PhotoData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'drive_id':
          result.driveId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoData extends PhotoData {
  @override
  final String driveId;
  @override
  final String name;
  @override
  final String type;

  factory _$PhotoData([void Function(PhotoDataBuilder) updates]) =>
      (new PhotoDataBuilder()..update(updates)).build();

  _$PhotoData._({this.driveId, this.name, this.type}) : super._() {
    if (driveId == null) {
      throw new BuiltValueNullFieldError('PhotoData', 'driveId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('PhotoData', 'name');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('PhotoData', 'type');
    }
  }

  @override
  PhotoData rebuild(void Function(PhotoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoDataBuilder toBuilder() => new PhotoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoData &&
        driveId == other.driveId &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, driveId.hashCode), name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoData')
          ..add('driveId', driveId)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class PhotoDataBuilder implements Builder<PhotoData, PhotoDataBuilder> {
  _$PhotoData _$v;

  String _driveId;
  String get driveId => _$this._driveId;
  set driveId(String driveId) => _$this._driveId = driveId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  PhotoDataBuilder();

  PhotoDataBuilder get _$this {
    if (_$v != null) {
      _driveId = _$v.driveId;
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoData;
  }

  @override
  void update(void Function(PhotoDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoData build() {
    final _$result =
        _$v ?? new _$PhotoData._(driveId: driveId, name: name, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
