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
  @override
  final int limit;

  factory _$GetGroupedByThumbnail(
          [void updates(GetGroupedByThumbnailBuilder b)]) =>
      (new GetGroupedByThumbnailBuilder()..update(updates)).build();

  _$GetGroupedByThumbnail._({this.classId, this.limit}) : super._() {
    if (classId == null) {
      throw new BuiltValueNullFieldError('GetGroupedByThumbnail', 'classId');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('GetGroupedByThumbnail', 'limit');
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
    return other is GetGroupedByThumbnail &&
        classId == other.classId &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, classId.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetGroupedByThumbnail')
          ..add('classId', classId)
          ..add('limit', limit))
        .toString();
  }
}

class GetGroupedByThumbnailBuilder
    implements Builder<GetGroupedByThumbnail, GetGroupedByThumbnailBuilder> {
  _$GetGroupedByThumbnail _$v;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  GetGroupedByThumbnailBuilder();

  GetGroupedByThumbnailBuilder get _$this {
    if (_$v != null) {
      _classId = _$v.classId;
      _limit = _$v.limit;
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
    final _$result =
        _$v ?? new _$GetGroupedByThumbnail._(classId: classId, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$SyncToGoogleDrive extends SyncToGoogleDrive {
  @override
  final int classId;

  factory _$SyncToGoogleDrive([void updates(SyncToGoogleDriveBuilder b)]) =>
      (new SyncToGoogleDriveBuilder()..update(updates)).build();

  _$SyncToGoogleDrive._({this.classId}) : super._() {
    if (classId == null) {
      throw new BuiltValueNullFieldError('SyncToGoogleDrive', 'classId');
    }
  }

  @override
  SyncToGoogleDrive rebuild(void updates(SyncToGoogleDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncToGoogleDriveBuilder toBuilder() =>
      new SyncToGoogleDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncToGoogleDrive && classId == other.classId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, classId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncToGoogleDrive')
          ..add('classId', classId))
        .toString();
  }
}

class SyncToGoogleDriveBuilder
    implements Builder<SyncToGoogleDrive, SyncToGoogleDriveBuilder> {
  _$SyncToGoogleDrive _$v;

  int _classId;
  int get classId => _$this._classId;
  set classId(int classId) => _$this._classId = classId;

  SyncToGoogleDriveBuilder();

  SyncToGoogleDriveBuilder get _$this {
    if (_$v != null) {
      _classId = _$v.classId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncToGoogleDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncToGoogleDrive;
  }

  @override
  void update(void updates(SyncToGoogleDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncToGoogleDrive build() {
    final _$result = _$v ?? new _$SyncToGoogleDrive._(classId: classId);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingToGoogleDrive extends SyncingToGoogleDrive {
  @override
  final int total;
  @override
  final int done;

  factory _$SyncingToGoogleDrive(
          [void updates(SyncingToGoogleDriveBuilder b)]) =>
      (new SyncingToGoogleDriveBuilder()..update(updates)).build();

  _$SyncingToGoogleDrive._({this.total, this.done}) : super._() {
    if (total == null) {
      throw new BuiltValueNullFieldError('SyncingToGoogleDrive', 'total');
    }
    if (done == null) {
      throw new BuiltValueNullFieldError('SyncingToGoogleDrive', 'done');
    }
  }

  @override
  SyncingToGoogleDrive rebuild(void updates(SyncingToGoogleDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingToGoogleDriveBuilder toBuilder() =>
      new SyncingToGoogleDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingToGoogleDrive &&
        total == other.total &&
        done == other.done;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, total.hashCode), done.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingToGoogleDrive')
          ..add('total', total)
          ..add('done', done))
        .toString();
  }
}

class SyncingToGoogleDriveBuilder
    implements Builder<SyncingToGoogleDrive, SyncingToGoogleDriveBuilder> {
  _$SyncingToGoogleDrive _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _done;
  int get done => _$this._done;
  set done(int done) => _$this._done = done;

  SyncingToGoogleDriveBuilder();

  SyncingToGoogleDriveBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _done = _$v.done;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingToGoogleDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingToGoogleDrive;
  }

  @override
  void update(void updates(SyncingToGoogleDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingToGoogleDrive build() {
    final _$result =
        _$v ?? new _$SyncingToGoogleDrive._(total: total, done: done);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingToGoogleDriveCompleted extends SyncingToGoogleDriveCompleted {
  factory _$SyncingToGoogleDriveCompleted(
          [void updates(SyncingToGoogleDriveCompletedBuilder b)]) =>
      (new SyncingToGoogleDriveCompletedBuilder()..update(updates)).build();

  _$SyncingToGoogleDriveCompleted._() : super._();

  @override
  SyncingToGoogleDriveCompleted rebuild(
          void updates(SyncingToGoogleDriveCompletedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingToGoogleDriveCompletedBuilder toBuilder() =>
      new SyncingToGoogleDriveCompletedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingToGoogleDriveCompleted;
  }

  @override
  int get hashCode {
    return 821526419;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SyncingToGoogleDriveCompleted')
        .toString();
  }
}

class SyncingToGoogleDriveCompletedBuilder
    implements
        Builder<SyncingToGoogleDriveCompleted,
            SyncingToGoogleDriveCompletedBuilder> {
  _$SyncingToGoogleDriveCompleted _$v;

  SyncingToGoogleDriveCompletedBuilder();

  @override
  void replace(SyncingToGoogleDriveCompleted other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingToGoogleDriveCompleted;
  }

  @override
  void update(void updates(SyncingToGoogleDriveCompletedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingToGoogleDriveCompleted build() {
    final _$result = _$v ?? new _$SyncingToGoogleDriveCompleted._();
    replace(_$result);
    return _$result;
  }
}

class _$SyncingToGoogleDriveError extends SyncingToGoogleDriveError {
  @override
  final String message;

  factory _$SyncingToGoogleDriveError(
          [void updates(SyncingToGoogleDriveErrorBuilder b)]) =>
      (new SyncingToGoogleDriveErrorBuilder()..update(updates)).build();

  _$SyncingToGoogleDriveError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'SyncingToGoogleDriveError', 'message');
    }
  }

  @override
  SyncingToGoogleDriveError rebuild(
          void updates(SyncingToGoogleDriveErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingToGoogleDriveErrorBuilder toBuilder() =>
      new SyncingToGoogleDriveErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingToGoogleDriveError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingToGoogleDriveError')
          ..add('message', message))
        .toString();
  }
}

class SyncingToGoogleDriveErrorBuilder
    implements
        Builder<SyncingToGoogleDriveError, SyncingToGoogleDriveErrorBuilder> {
  _$SyncingToGoogleDriveError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SyncingToGoogleDriveErrorBuilder();

  SyncingToGoogleDriveErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingToGoogleDriveError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingToGoogleDriveError;
  }

  @override
  void update(void updates(SyncingToGoogleDriveErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingToGoogleDriveError build() {
    final _$result = _$v ?? new _$SyncingToGoogleDriveError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$SyncGalleryToServer extends SyncGalleryToServer {
  @override
  final List<Gallery> galleries;

  factory _$SyncGalleryToServer([void updates(SyncGalleryToServerBuilder b)]) =>
      (new SyncGalleryToServerBuilder()..update(updates)).build();

  _$SyncGalleryToServer._({this.galleries}) : super._() {
    if (galleries == null) {
      throw new BuiltValueNullFieldError('SyncGalleryToServer', 'galleries');
    }
  }

  @override
  SyncGalleryToServer rebuild(void updates(SyncGalleryToServerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncGalleryToServerBuilder toBuilder() =>
      new SyncGalleryToServerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncGalleryToServer && galleries == other.galleries;
  }

  @override
  int get hashCode {
    return $jf($jc(0, galleries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncGalleryToServer')
          ..add('galleries', galleries))
        .toString();
  }
}

class SyncGalleryToServerBuilder
    implements Builder<SyncGalleryToServer, SyncGalleryToServerBuilder> {
  _$SyncGalleryToServer _$v;

  List<Gallery> _galleries;
  List<Gallery> get galleries => _$this._galleries;
  set galleries(List<Gallery> galleries) => _$this._galleries = galleries;

  SyncGalleryToServerBuilder();

  SyncGalleryToServerBuilder get _$this {
    if (_$v != null) {
      _galleries = _$v.galleries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncGalleryToServer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncGalleryToServer;
  }

  @override
  void update(void updates(SyncGalleryToServerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncGalleryToServer build() {
    final _$result = _$v ?? new _$SyncGalleryToServer._(galleries: galleries);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingGalleryToServerCompleted
    extends SyncingGalleryToServerCompleted {
  factory _$SyncingGalleryToServerCompleted(
          [void updates(SyncingGalleryToServerCompletedBuilder b)]) =>
      (new SyncingGalleryToServerCompletedBuilder()..update(updates)).build();

  _$SyncingGalleryToServerCompleted._() : super._();

  @override
  SyncingGalleryToServerCompleted rebuild(
          void updates(SyncingGalleryToServerCompletedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingGalleryToServerCompletedBuilder toBuilder() =>
      new SyncingGalleryToServerCompletedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingGalleryToServerCompleted;
  }

  @override
  int get hashCode {
    return 957072733;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SyncingGalleryToServerCompleted')
        .toString();
  }
}

class SyncingGalleryToServerCompletedBuilder
    implements
        Builder<SyncingGalleryToServerCompleted,
            SyncingGalleryToServerCompletedBuilder> {
  _$SyncingGalleryToServerCompleted _$v;

  SyncingGalleryToServerCompletedBuilder();

  @override
  void replace(SyncingGalleryToServerCompleted other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingGalleryToServerCompleted;
  }

  @override
  void update(void updates(SyncingGalleryToServerCompletedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingGalleryToServerCompleted build() {
    final _$result = _$v ?? new _$SyncingGalleryToServerCompleted._();
    replace(_$result);
    return _$result;
  }
}

class _$SyncingGalleryToServerError extends SyncingGalleryToServerError {
  @override
  final String message;

  factory _$SyncingGalleryToServerError(
          [void updates(SyncingGalleryToServerErrorBuilder b)]) =>
      (new SyncingGalleryToServerErrorBuilder()..update(updates)).build();

  _$SyncingGalleryToServerError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'SyncingGalleryToServerError', 'message');
    }
  }

  @override
  SyncingGalleryToServerError rebuild(
          void updates(SyncingGalleryToServerErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingGalleryToServerErrorBuilder toBuilder() =>
      new SyncingGalleryToServerErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingGalleryToServerError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingGalleryToServerError')
          ..add('message', message))
        .toString();
  }
}

class SyncingGalleryToServerErrorBuilder
    implements
        Builder<SyncingGalleryToServerError,
            SyncingGalleryToServerErrorBuilder> {
  _$SyncingGalleryToServerError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SyncingGalleryToServerErrorBuilder();

  SyncingGalleryToServerErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingGalleryToServerError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingGalleryToServerError;
  }

  @override
  void update(void updates(SyncingGalleryToServerErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingGalleryToServerError build() {
    final _$result =
        _$v ?? new _$SyncingGalleryToServerError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$SyncNarrativeToDrive extends SyncNarrativeToDrive {
  @override
  final List<Gallery> galleries;
  @override
  final String narrativeTitle;
  @override
  final String narrative;
  @override
  final String date;

  factory _$SyncNarrativeToDrive(
          [void updates(SyncNarrativeToDriveBuilder b)]) =>
      (new SyncNarrativeToDriveBuilder()..update(updates)).build();

  _$SyncNarrativeToDrive._(
      {this.galleries, this.narrativeTitle, this.narrative, this.date})
      : super._() {
    if (galleries == null) {
      throw new BuiltValueNullFieldError('SyncNarrativeToDrive', 'galleries');
    }
    if (narrativeTitle == null) {
      throw new BuiltValueNullFieldError(
          'SyncNarrativeToDrive', 'narrativeTitle');
    }
    if (narrative == null) {
      throw new BuiltValueNullFieldError('SyncNarrativeToDrive', 'narrative');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('SyncNarrativeToDrive', 'date');
    }
  }

  @override
  SyncNarrativeToDrive rebuild(void updates(SyncNarrativeToDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncNarrativeToDriveBuilder toBuilder() =>
      new SyncNarrativeToDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncNarrativeToDrive &&
        galleries == other.galleries &&
        narrativeTitle == other.narrativeTitle &&
        narrative == other.narrative &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, galleries.hashCode), narrativeTitle.hashCode),
            narrative.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncNarrativeToDrive')
          ..add('galleries', galleries)
          ..add('narrativeTitle', narrativeTitle)
          ..add('narrative', narrative)
          ..add('date', date))
        .toString();
  }
}

class SyncNarrativeToDriveBuilder
    implements Builder<SyncNarrativeToDrive, SyncNarrativeToDriveBuilder> {
  _$SyncNarrativeToDrive _$v;

  List<Gallery> _galleries;
  List<Gallery> get galleries => _$this._galleries;
  set galleries(List<Gallery> galleries) => _$this._galleries = galleries;

  String _narrativeTitle;
  String get narrativeTitle => _$this._narrativeTitle;
  set narrativeTitle(String narrativeTitle) =>
      _$this._narrativeTitle = narrativeTitle;

  String _narrative;
  String get narrative => _$this._narrative;
  set narrative(String narrative) => _$this._narrative = narrative;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  SyncNarrativeToDriveBuilder();

  SyncNarrativeToDriveBuilder get _$this {
    if (_$v != null) {
      _galleries = _$v.galleries;
      _narrativeTitle = _$v.narrativeTitle;
      _narrative = _$v.narrative;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncNarrativeToDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncNarrativeToDrive;
  }

  @override
  void update(void updates(SyncNarrativeToDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncNarrativeToDrive build() {
    final _$result = _$v ??
        new _$SyncNarrativeToDrive._(
            galleries: galleries,
            narrativeTitle: narrativeTitle,
            narrative: narrative,
            date: date);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingNarrativeToDrive extends SyncingNarrativeToDrive {
  @override
  final int total;
  @override
  final int done;

  factory _$SyncingNarrativeToDrive(
          [void updates(SyncingNarrativeToDriveBuilder b)]) =>
      (new SyncingNarrativeToDriveBuilder()..update(updates)).build();

  _$SyncingNarrativeToDrive._({this.total, this.done}) : super._() {
    if (total == null) {
      throw new BuiltValueNullFieldError('SyncingNarrativeToDrive', 'total');
    }
    if (done == null) {
      throw new BuiltValueNullFieldError('SyncingNarrativeToDrive', 'done');
    }
  }

  @override
  SyncingNarrativeToDrive rebuild(
          void updates(SyncingNarrativeToDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingNarrativeToDriveBuilder toBuilder() =>
      new SyncingNarrativeToDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingNarrativeToDrive &&
        total == other.total &&
        done == other.done;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, total.hashCode), done.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingNarrativeToDrive')
          ..add('total', total)
          ..add('done', done))
        .toString();
  }
}

class SyncingNarrativeToDriveBuilder
    implements
        Builder<SyncingNarrativeToDrive, SyncingNarrativeToDriveBuilder> {
  _$SyncingNarrativeToDrive _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _done;
  int get done => _$this._done;
  set done(int done) => _$this._done = done;

  SyncingNarrativeToDriveBuilder();

  SyncingNarrativeToDriveBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _done = _$v.done;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingNarrativeToDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingNarrativeToDrive;
  }

  @override
  void update(void updates(SyncingNarrativeToDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingNarrativeToDrive build() {
    final _$result =
        _$v ?? new _$SyncingNarrativeToDrive._(total: total, done: done);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingNarrativeToDriveError extends SyncingNarrativeToDriveError {
  @override
  final String message;

  factory _$SyncingNarrativeToDriveError(
          [void updates(SyncingNarrativeToDriveErrorBuilder b)]) =>
      (new SyncingNarrativeToDriveErrorBuilder()..update(updates)).build();

  _$SyncingNarrativeToDriveError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'SyncingNarrativeToDriveError', 'message');
    }
  }

  @override
  SyncingNarrativeToDriveError rebuild(
          void updates(SyncingNarrativeToDriveErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingNarrativeToDriveErrorBuilder toBuilder() =>
      new SyncingNarrativeToDriveErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingNarrativeToDriveError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingNarrativeToDriveError')
          ..add('message', message))
        .toString();
  }
}

class SyncingNarrativeToDriveErrorBuilder
    implements
        Builder<SyncingNarrativeToDriveError,
            SyncingNarrativeToDriveErrorBuilder> {
  _$SyncingNarrativeToDriveError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SyncingNarrativeToDriveErrorBuilder();

  SyncingNarrativeToDriveErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingNarrativeToDriveError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingNarrativeToDriveError;
  }

  @override
  void update(void updates(SyncingNarrativeToDriveErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingNarrativeToDriveError build() {
    final _$result =
        _$v ?? new _$SyncingNarrativeToDriveError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
