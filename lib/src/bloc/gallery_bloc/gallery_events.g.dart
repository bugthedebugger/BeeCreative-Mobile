// GENERATED CODE - DO NOT MODIFY BY HAND

part of gallery_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Thumbnail extends Thumbnail {
  @override
  final int classId;

  factory _$Thumbnail([void updates(ThumbnailBuilder b)]) =>
      (new ThumbnailBuilder()..update(updates)).build();

  _$Thumbnail._({this.classId}) : super._() {
    if (classId == null) {
      throw new BuiltValueNullFieldError('Thumbnail', 'classId');
    }
  }

  @override
  Thumbnail rebuild(void updates(ThumbnailBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailBuilder toBuilder() => new ThumbnailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Thumbnail && classId == other.classId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, classId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Thumbnail')..add('classId', classId))
        .toString();
  }
}

class ThumbnailBuilder implements Builder<Thumbnail, ThumbnailBuilder> {
  _$Thumbnail _$v;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  ThumbnailBuilder();

  ThumbnailBuilder get _$this {
    if (_$v != null) {
      _classId = _$v.classId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thumbnail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Thumbnail;
  }

  @override
  void update(void updates(ThumbnailBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Thumbnail build() {
    final _$result = _$v ?? new _$Thumbnail._(classId: classId);
    replace(_$result);
    return _$result;
  }
}

class _$TakePhoto extends TakePhoto {
  @override
  final Schedule schedule;

  factory _$TakePhoto([void updates(TakePhotoBuilder b)]) =>
      (new TakePhotoBuilder()..update(updates)).build();

  _$TakePhoto._({this.schedule}) : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('TakePhoto', 'schedule');
    }
  }

  @override
  TakePhoto rebuild(void updates(TakePhotoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TakePhotoBuilder toBuilder() => new TakePhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TakePhoto && schedule == other.schedule;
  }

  @override
  int get hashCode {
    return $jf($jc(0, schedule.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TakePhoto')..add('schedule', schedule))
        .toString();
  }
}

class TakePhotoBuilder implements Builder<TakePhoto, TakePhotoBuilder> {
  _$TakePhoto _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  TakePhotoBuilder();

  TakePhotoBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TakePhoto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TakePhoto;
  }

  @override
  void update(void updates(TakePhotoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TakePhoto build() {
    _$TakePhoto _$result;
    try {
      _$result = _$v ?? new _$TakePhoto._(schedule: schedule.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TakePhoto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UploadFromGallery extends UploadFromGallery {
  @override
  final Schedule schedule;

  factory _$UploadFromGallery([void updates(UploadFromGalleryBuilder b)]) =>
      (new UploadFromGalleryBuilder()..update(updates)).build();

  _$UploadFromGallery._({this.schedule}) : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('UploadFromGallery', 'schedule');
    }
  }

  @override
  UploadFromGallery rebuild(void updates(UploadFromGalleryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadFromGalleryBuilder toBuilder() =>
      new UploadFromGalleryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadFromGallery && schedule == other.schedule;
  }

  @override
  int get hashCode {
    return $jf($jc(0, schedule.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UploadFromGallery')
          ..add('schedule', schedule))
        .toString();
  }
}

class UploadFromGalleryBuilder
    implements Builder<UploadFromGallery, UploadFromGalleryBuilder> {
  _$UploadFromGallery _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  UploadFromGalleryBuilder();

  UploadFromGalleryBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadFromGallery other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UploadFromGallery;
  }

  @override
  void update(void updates(UploadFromGalleryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UploadFromGallery build() {
    _$UploadFromGallery _$result;
    try {
      _$result = _$v ?? new _$UploadFromGallery._(schedule: schedule.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UploadFromGallery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PhotoTaken extends PhotoTaken {
  factory _$PhotoTaken([void updates(PhotoTakenBuilder b)]) =>
      (new PhotoTakenBuilder()..update(updates)).build();

  _$PhotoTaken._() : super._();

  @override
  PhotoTaken rebuild(void updates(PhotoTakenBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoTakenBuilder toBuilder() => new PhotoTakenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoTaken;
  }

  @override
  int get hashCode {
    return 71539447;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('PhotoTaken').toString();
  }
}

class PhotoTakenBuilder implements Builder<PhotoTaken, PhotoTakenBuilder> {
  _$PhotoTaken _$v;

  PhotoTakenBuilder();

  @override
  void replace(PhotoTaken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoTaken;
  }

  @override
  void update(void updates(PhotoTakenBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoTaken build() {
    final _$result = _$v ?? new _$PhotoTaken._();
    replace(_$result);
    return _$result;
  }
}

class _$UploadedFromGallery extends UploadedFromGallery {
  @override
  final Schedule schedule;

  factory _$UploadedFromGallery([void updates(UploadedFromGalleryBuilder b)]) =>
      (new UploadedFromGalleryBuilder()..update(updates)).build();

  _$UploadedFromGallery._({this.schedule}) : super._() {
    if (schedule == null) {
      throw new BuiltValueNullFieldError('UploadedFromGallery', 'schedule');
    }
  }

  @override
  UploadedFromGallery rebuild(void updates(UploadedFromGalleryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadedFromGalleryBuilder toBuilder() =>
      new UploadedFromGalleryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadedFromGallery && schedule == other.schedule;
  }

  @override
  int get hashCode {
    return $jf($jc(0, schedule.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UploadedFromGallery')
          ..add('schedule', schedule))
        .toString();
  }
}

class UploadedFromGalleryBuilder
    implements Builder<UploadedFromGallery, UploadedFromGalleryBuilder> {
  _$UploadedFromGallery _$v;

  ScheduleBuilder _schedule;
  ScheduleBuilder get schedule => _$this._schedule ??= new ScheduleBuilder();
  set schedule(ScheduleBuilder schedule) => _$this._schedule = schedule;

  UploadedFromGalleryBuilder();

  UploadedFromGalleryBuilder get _$this {
    if (_$v != null) {
      _schedule = _$v.schedule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadedFromGallery other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UploadedFromGallery;
  }

  @override
  void update(void updates(UploadedFromGalleryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UploadedFromGallery build() {
    _$UploadedFromGallery _$result;
    try {
      _$result = _$v ?? new _$UploadedFromGallery._(schedule: schedule.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UploadedFromGallery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetFullGallery extends GetFullGallery {
  @override
  final int classId;

  factory _$GetFullGallery([void updates(GetFullGalleryBuilder b)]) =>
      (new GetFullGalleryBuilder()..update(updates)).build();

  _$GetFullGallery._({this.classId}) : super._() {
    if (classId == null) {
      throw new BuiltValueNullFieldError('GetFullGallery', 'classId');
    }
  }

  @override
  GetFullGallery rebuild(void updates(GetFullGalleryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFullGalleryBuilder toBuilder() =>
      new GetFullGalleryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFullGallery && classId == other.classId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, classId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFullGallery')
          ..add('classId', classId))
        .toString();
  }
}

class GetFullGalleryBuilder
    implements Builder<GetFullGallery, GetFullGalleryBuilder> {
  _$GetFullGallery _$v;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  GetFullGalleryBuilder();

  GetFullGalleryBuilder get _$this {
    if (_$v != null) {
      _classId = _$v.classId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFullGallery other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFullGallery;
  }

  @override
  void update(void updates(GetFullGalleryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFullGallery build() {
    final _$result = _$v ?? new _$GetFullGallery._(classId: classId);
    replace(_$result);
    return _$result;
  }
}

class _$GetGroupedByThumbnail extends GetGroupedByThumbnail {
  @override
  final int classId;

  factory _$GetGroupedByThumbnail(
          [void updates(GetGroupedByThumbnailBuilder b)]) =>
      (new GetGroupedByThumbnailBuilder()..update(updates)).build();

  _$GetGroupedByThumbnail._({this.classId}) : super._() {
    if (classId == null) {
      throw new BuiltValueNullFieldError('GetGroupedByThumbnail', 'classId');
    }
  }

  @override
  GetGroupedByThumbnail rebuild(void updates(GetGroupedByThumbnailBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupedByThumbnailBuilder toBuilder() =>
      new GetGroupedByThumbnailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupedByThumbnail && classId == other.classId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, classId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetGroupedByThumbnail')
          ..add('classId', classId))
        .toString();
  }
}

class GetGroupedByThumbnailBuilder
    implements Builder<GetGroupedByThumbnail, GetGroupedByThumbnailBuilder> {
  _$GetGroupedByThumbnail _$v;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  GetGroupedByThumbnailBuilder();

  GetGroupedByThumbnailBuilder get _$this {
    if (_$v != null) {
      _classId = _$v.classId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupedByThumbnail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetGroupedByThumbnail;
  }

  @override
  void update(void updates(GetGroupedByThumbnailBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetGroupedByThumbnail build() {
    final _$result = _$v ?? new _$GetGroupedByThumbnail._(classId: classId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
