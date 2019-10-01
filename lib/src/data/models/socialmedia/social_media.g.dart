// GENERATED CODE - DO NOT MODIFY BY HAND

part of social_media;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SocialMedia> _$socialMediaSerializer = new _$SocialMediaSerializer();

class _$SocialMediaSerializer implements StructuredSerializer<SocialMedia> {
  @override
  final Iterable<Type> types = const [SocialMedia, _$SocialMedia];
  @override
  final String wireName = 'SocialMedia';

  @override
  Iterable<Object> serialize(Serializers serializers, SocialMedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'schedule_id',
      serializers.serialize(object.scheduleId,
          specifiedType: const FullType(int)),
      'mediatype',
      serializers.serialize(object.mediaType,
          specifiedType: const FullType(String)),
      'number_of_photo',
      serializers.serialize(object.numberOfPhotos,
          specifiedType: const FullType(int)),
      'number_of_video',
      serializers.serialize(object.numberOfVideo,
          specifiedType: const FullType(int)),
      'uploaded',
      serializers.serialize(object.uploaded,
          specifiedType: const FullType(bool)),
      'photos',
      serializers.serialize(object.photos,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PhotoData)])),
    ];

    return result;
  }

  @override
  SocialMedia deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SocialMediaBuilder();

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
        case 'mediatype':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number_of_photo':
          result.numberOfPhotos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number_of_video':
          result.numberOfVideo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uploaded':
          result.uploaded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PhotoData)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$SocialMedia extends SocialMedia {
  @override
  final int scheduleId;
  @override
  final String mediaType;
  @override
  final int numberOfPhotos;
  @override
  final int numberOfVideo;
  @override
  final bool uploaded;
  @override
  final BuiltList<PhotoData> photos;

  factory _$SocialMedia([void Function(SocialMediaBuilder) updates]) =>
      (new SocialMediaBuilder()..update(updates)).build();

  _$SocialMedia._(
      {this.scheduleId,
      this.mediaType,
      this.numberOfPhotos,
      this.numberOfVideo,
      this.uploaded,
      this.photos})
      : super._() {
    if (scheduleId == null) {
      throw new BuiltValueNullFieldError('SocialMedia', 'scheduleId');
    }
    if (mediaType == null) {
      throw new BuiltValueNullFieldError('SocialMedia', 'mediaType');
    }
    if (numberOfPhotos == null) {
      throw new BuiltValueNullFieldError('SocialMedia', 'numberOfPhotos');
    }
    if (numberOfVideo == null) {
      throw new BuiltValueNullFieldError('SocialMedia', 'numberOfVideo');
    }
    if (uploaded == null) {
      throw new BuiltValueNullFieldError('SocialMedia', 'uploaded');
    }
    if (photos == null) {
      throw new BuiltValueNullFieldError('SocialMedia', 'photos');
    }
  }

  @override
  SocialMedia rebuild(void Function(SocialMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialMediaBuilder toBuilder() => new SocialMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialMedia &&
        scheduleId == other.scheduleId &&
        mediaType == other.mediaType &&
        numberOfPhotos == other.numberOfPhotos &&
        numberOfVideo == other.numberOfVideo &&
        uploaded == other.uploaded &&
        photos == other.photos;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, scheduleId.hashCode), mediaType.hashCode),
                    numberOfPhotos.hashCode),
                numberOfVideo.hashCode),
            uploaded.hashCode),
        photos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialMedia')
          ..add('scheduleId', scheduleId)
          ..add('mediaType', mediaType)
          ..add('numberOfPhotos', numberOfPhotos)
          ..add('numberOfVideo', numberOfVideo)
          ..add('uploaded', uploaded)
          ..add('photos', photos))
        .toString();
  }
}

class SocialMediaBuilder implements Builder<SocialMedia, SocialMediaBuilder> {
  _$SocialMedia _$v;

  int _scheduleId;
  int get scheduleId => _$this._scheduleId;
  set scheduleId(int scheduleId) => _$this._scheduleId = scheduleId;

  String _mediaType;
  String get mediaType => _$this._mediaType;
  set mediaType(String mediaType) => _$this._mediaType = mediaType;

  int _numberOfPhotos;
  int get numberOfPhotos => _$this._numberOfPhotos;
  set numberOfPhotos(int numberOfPhotos) =>
      _$this._numberOfPhotos = numberOfPhotos;

  int _numberOfVideo;
  int get numberOfVideo => _$this._numberOfVideo;
  set numberOfVideo(int numberOfVideo) => _$this._numberOfVideo = numberOfVideo;

  bool _uploaded;
  bool get uploaded => _$this._uploaded;
  set uploaded(bool uploaded) => _$this._uploaded = uploaded;

  ListBuilder<PhotoData> _photos;
  ListBuilder<PhotoData> get photos =>
      _$this._photos ??= new ListBuilder<PhotoData>();
  set photos(ListBuilder<PhotoData> photos) => _$this._photos = photos;

  SocialMediaBuilder();

  SocialMediaBuilder get _$this {
    if (_$v != null) {
      _scheduleId = _$v.scheduleId;
      _mediaType = _$v.mediaType;
      _numberOfPhotos = _$v.numberOfPhotos;
      _numberOfVideo = _$v.numberOfVideo;
      _uploaded = _$v.uploaded;
      _photos = _$v.photos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialMedia other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SocialMedia;
  }

  @override
  void update(void Function(SocialMediaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SocialMedia build() {
    _$SocialMedia _$result;
    try {
      _$result = _$v ??
          new _$SocialMedia._(
              scheduleId: scheduleId,
              mediaType: mediaType,
              numberOfPhotos: numberOfPhotos,
              numberOfVideo: numberOfVideo,
              uploaded: uploaded,
              photos: photos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        photos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SocialMedia', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
