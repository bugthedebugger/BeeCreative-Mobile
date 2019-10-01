// GENERATED CODE - DO NOT MODIFY BY HAND

part of drive_folder;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DriveFolder> _$driveFolderSerializer = new _$DriveFolderSerializer();

class _$DriveFolderSerializer implements StructuredSerializer<DriveFolder> {
  @override
  final Iterable<Type> types = const [DriveFolder, _$DriveFolder];
  @override
  final String wireName = 'DriveFolder';

  @override
  Iterable<Object> serialize(Serializers serializers, DriveFolder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'folder_id',
      serializers.serialize(object.folderId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DriveFolder deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriveFolderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'folder_id':
          result.folderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DriveFolder extends DriveFolder {
  @override
  final String folderId;

  factory _$DriveFolder([void Function(DriveFolderBuilder) updates]) =>
      (new DriveFolderBuilder()..update(updates)).build();

  _$DriveFolder._({this.folderId}) : super._() {
    if (folderId == null) {
      throw new BuiltValueNullFieldError('DriveFolder', 'folderId');
    }
  }

  @override
  DriveFolder rebuild(void Function(DriveFolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriveFolderBuilder toBuilder() => new DriveFolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriveFolder && folderId == other.folderId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, folderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DriveFolder')
          ..add('folderId', folderId))
        .toString();
  }
}

class DriveFolderBuilder implements Builder<DriveFolder, DriveFolderBuilder> {
  _$DriveFolder _$v;

  String _folderId;
  String get folderId => _$this._folderId;
  set folderId(String folderId) => _$this._folderId = folderId;

  DriveFolderBuilder();

  DriveFolderBuilder get _$this {
    if (_$v != null) {
      _folderId = _$v.folderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriveFolder other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DriveFolder;
  }

  @override
  void update(void Function(DriveFolderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DriveFolder build() {
    final _$result = _$v ?? new _$DriveFolder._(folderId: folderId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
