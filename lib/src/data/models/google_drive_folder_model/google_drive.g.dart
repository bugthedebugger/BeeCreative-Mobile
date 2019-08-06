// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_drive;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoogleDrive> _$googleDriveSerializer = new _$GoogleDriveSerializer();

class _$GoogleDriveSerializer implements StructuredSerializer<GoogleDrive> {
  @override
  final Iterable<Type> types = const [GoogleDrive, _$GoogleDrive];
  @override
  final String wireName = 'GoogleDrive';

  @override
  Iterable serialize(Serializers serializers, GoogleDrive object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.folder,
          specifiedType: const FullType(DriveFolder)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GoogleDrive deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoogleDriveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.folder.replace(serializers.deserialize(value,
              specifiedType: const FullType(DriveFolder)) as DriveFolder);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GoogleDrive extends GoogleDrive {
  @override
  final DriveFolder folder;
  @override
  final int code;

  factory _$GoogleDrive([void updates(GoogleDriveBuilder b)]) =>
      (new GoogleDriveBuilder()..update(updates)).build();

  _$GoogleDrive._({this.folder, this.code}) : super._() {
    if (folder == null) {
      throw new BuiltValueNullFieldError('GoogleDrive', 'folder');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('GoogleDrive', 'code');
    }
  }

  @override
  GoogleDrive rebuild(void updates(GoogleDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleDriveBuilder toBuilder() => new GoogleDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleDrive && folder == other.folder && code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, folder.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GoogleDrive')
          ..add('folder', folder)
          ..add('code', code))
        .toString();
  }
}

class GoogleDriveBuilder implements Builder<GoogleDrive, GoogleDriveBuilder> {
  _$GoogleDrive _$v;

  DriveFolderBuilder _folder;
  DriveFolderBuilder get folder => _$this._folder ??= new DriveFolderBuilder();
  set folder(DriveFolderBuilder folder) => _$this._folder = folder;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  GoogleDriveBuilder();

  GoogleDriveBuilder get _$this {
    if (_$v != null) {
      _folder = _$v.folder?.toBuilder();
      _code = _$v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GoogleDrive;
  }

  @override
  void update(void updates(GoogleDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleDrive build() {
    _$GoogleDrive _$result;
    try {
      _$result = _$v ?? new _$GoogleDrive._(folder: folder.build(), code: code);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'folder';
        folder.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GoogleDrive', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
