// GENERATED CODE - DO NOT MODIFY BY HAND

part of narrative_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SyncNarrativeToGoogleDrive extends SyncNarrativeToGoogleDrive {
  @override
  final List<Gallery> galleries;
  @override
  final String narrativeName;
  @override
  final String narrative;
  @override
  final DateTime date;

  factory _$SyncNarrativeToGoogleDrive(
          [void updates(SyncNarrativeToGoogleDriveBuilder b)]) =>
      (new SyncNarrativeToGoogleDriveBuilder()..update(updates)).build();

  _$SyncNarrativeToGoogleDrive._(
      {this.galleries, this.narrativeName, this.narrative, this.date})
      : super._() {
    if (galleries == null) {
      throw new BuiltValueNullFieldError(
          'SyncNarrativeToGoogleDrive', 'galleries');
    }
    if (narrativeName == null) {
      throw new BuiltValueNullFieldError(
          'SyncNarrativeToGoogleDrive', 'narrativeName');
    }
    if (narrative == null) {
      throw new BuiltValueNullFieldError(
          'SyncNarrativeToGoogleDrive', 'narrative');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('SyncNarrativeToGoogleDrive', 'date');
    }
  }

  @override
  SyncNarrativeToGoogleDrive rebuild(
          void updates(SyncNarrativeToGoogleDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncNarrativeToGoogleDriveBuilder toBuilder() =>
      new SyncNarrativeToGoogleDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncNarrativeToGoogleDrive &&
        galleries == other.galleries &&
        narrativeName == other.narrativeName &&
        narrative == other.narrative &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, galleries.hashCode), narrativeName.hashCode),
            narrative.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncNarrativeToGoogleDrive')
          ..add('galleries', galleries)
          ..add('narrativeName', narrativeName)
          ..add('narrative', narrative)
          ..add('date', date))
        .toString();
  }
}

class SyncNarrativeToGoogleDriveBuilder
    implements
        Builder<SyncNarrativeToGoogleDrive, SyncNarrativeToGoogleDriveBuilder> {
  _$SyncNarrativeToGoogleDrive _$v;

  List<Gallery> _galleries;
  List<Gallery> get galleries => _$this._galleries;
  set galleries(List<Gallery> galleries) => _$this._galleries = galleries;

  String _narrativeName;
  String get narrativeName => _$this._narrativeName;
  set narrativeName(String narrativeName) =>
      _$this._narrativeName = narrativeName;

  String _narrative;
  String get narrative => _$this._narrative;
  set narrative(String narrative) => _$this._narrative = narrative;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  SyncNarrativeToGoogleDriveBuilder();

  SyncNarrativeToGoogleDriveBuilder get _$this {
    if (_$v != null) {
      _galleries = _$v.galleries;
      _narrativeName = _$v.narrativeName;
      _narrative = _$v.narrative;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncNarrativeToGoogleDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncNarrativeToGoogleDrive;
  }

  @override
  void update(void updates(SyncNarrativeToGoogleDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncNarrativeToGoogleDrive build() {
    final _$result = _$v ??
        new _$SyncNarrativeToGoogleDrive._(
            galleries: galleries,
            narrativeName: narrativeName,
            narrative: narrative,
            date: date);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingNarrativeToGoogleDrive extends SyncingNarrativeToGoogleDrive {
  @override
  final int total;
  @override
  final int done;

  factory _$SyncingNarrativeToGoogleDrive(
          [void updates(SyncingNarrativeToGoogleDriveBuilder b)]) =>
      (new SyncingNarrativeToGoogleDriveBuilder()..update(updates)).build();

  _$SyncingNarrativeToGoogleDrive._({this.total, this.done}) : super._() {
    if (total == null) {
      throw new BuiltValueNullFieldError(
          'SyncingNarrativeToGoogleDrive', 'total');
    }
    if (done == null) {
      throw new BuiltValueNullFieldError(
          'SyncingNarrativeToGoogleDrive', 'done');
    }
  }

  @override
  SyncingNarrativeToGoogleDrive rebuild(
          void updates(SyncingNarrativeToGoogleDriveBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingNarrativeToGoogleDriveBuilder toBuilder() =>
      new SyncingNarrativeToGoogleDriveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingNarrativeToGoogleDrive &&
        total == other.total &&
        done == other.done;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, total.hashCode), done.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingNarrativeToGoogleDrive')
          ..add('total', total)
          ..add('done', done))
        .toString();
  }
}

class SyncingNarrativeToGoogleDriveBuilder
    implements
        Builder<SyncingNarrativeToGoogleDrive,
            SyncingNarrativeToGoogleDriveBuilder> {
  _$SyncingNarrativeToGoogleDrive _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _done;
  int get done => _$this._done;
  set done(int done) => _$this._done = done;

  SyncingNarrativeToGoogleDriveBuilder();

  SyncingNarrativeToGoogleDriveBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _done = _$v.done;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingNarrativeToGoogleDrive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingNarrativeToGoogleDrive;
  }

  @override
  void update(void updates(SyncingNarrativeToGoogleDriveBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingNarrativeToGoogleDrive build() {
    final _$result =
        _$v ?? new _$SyncingNarrativeToGoogleDrive._(total: total, done: done);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingNarrativeToGoogleDriveError
    extends SyncingNarrativeToGoogleDriveError {
  @override
  final String message;

  factory _$SyncingNarrativeToGoogleDriveError(
          [void updates(SyncingNarrativeToGoogleDriveErrorBuilder b)]) =>
      (new SyncingNarrativeToGoogleDriveErrorBuilder()..update(updates))
          .build();

  _$SyncingNarrativeToGoogleDriveError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'SyncingNarrativeToGoogleDriveError', 'message');
    }
  }

  @override
  SyncingNarrativeToGoogleDriveError rebuild(
          void updates(SyncingNarrativeToGoogleDriveErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingNarrativeToGoogleDriveErrorBuilder toBuilder() =>
      new SyncingNarrativeToGoogleDriveErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingNarrativeToGoogleDriveError &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncingNarrativeToGoogleDriveError')
          ..add('message', message))
        .toString();
  }
}

class SyncingNarrativeToGoogleDriveErrorBuilder
    implements
        Builder<SyncingNarrativeToGoogleDriveError,
            SyncingNarrativeToGoogleDriveErrorBuilder> {
  _$SyncingNarrativeToGoogleDriveError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SyncingNarrativeToGoogleDriveErrorBuilder();

  SyncingNarrativeToGoogleDriveErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncingNarrativeToGoogleDriveError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingNarrativeToGoogleDriveError;
  }

  @override
  void update(void updates(SyncingNarrativeToGoogleDriveErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingNarrativeToGoogleDriveError build() {
    final _$result =
        _$v ?? new _$SyncingNarrativeToGoogleDriveError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$SyncingNarrativeToGoogleDriveSuccess
    extends SyncingNarrativeToGoogleDriveSuccess {
  factory _$SyncingNarrativeToGoogleDriveSuccess(
          [void updates(SyncingNarrativeToGoogleDriveSuccessBuilder b)]) =>
      (new SyncingNarrativeToGoogleDriveSuccessBuilder()..update(updates))
          .build();

  _$SyncingNarrativeToGoogleDriveSuccess._() : super._();

  @override
  SyncingNarrativeToGoogleDriveSuccess rebuild(
          void updates(SyncingNarrativeToGoogleDriveSuccessBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncingNarrativeToGoogleDriveSuccessBuilder toBuilder() =>
      new SyncingNarrativeToGoogleDriveSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncingNarrativeToGoogleDriveSuccess;
  }

  @override
  int get hashCode {
    return 678976938;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SyncingNarrativeToGoogleDriveSuccess')
        .toString();
  }
}

class SyncingNarrativeToGoogleDriveSuccessBuilder
    implements
        Builder<SyncingNarrativeToGoogleDriveSuccess,
            SyncingNarrativeToGoogleDriveSuccessBuilder> {
  _$SyncingNarrativeToGoogleDriveSuccess _$v;

  SyncingNarrativeToGoogleDriveSuccessBuilder();

  @override
  void replace(SyncingNarrativeToGoogleDriveSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncingNarrativeToGoogleDriveSuccess;
  }

  @override
  void update(void updates(SyncingNarrativeToGoogleDriveSuccessBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncingNarrativeToGoogleDriveSuccess build() {
    final _$result = _$v ?? new _$SyncingNarrativeToGoogleDriveSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$SyncNarrativeToServer extends SyncNarrativeToServer {
  @override
  final List<Gallery> galleries;

  factory _$SyncNarrativeToServer(
          [void updates(SyncNarrativeToServerBuilder b)]) =>
      (new SyncNarrativeToServerBuilder()..update(updates)).build();

  _$SyncNarrativeToServer._({this.galleries}) : super._() {
    if (galleries == null) {
      throw new BuiltValueNullFieldError('SyncNarrativeToServer', 'galleries');
    }
  }

  @override
  SyncNarrativeToServer rebuild(void updates(SyncNarrativeToServerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncNarrativeToServerBuilder toBuilder() =>
      new SyncNarrativeToServerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncNarrativeToServer && galleries == other.galleries;
  }

  @override
  int get hashCode {
    return $jf($jc(0, galleries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncNarrativeToServer')
          ..add('galleries', galleries))
        .toString();
  }
}

class SyncNarrativeToServerBuilder
    implements Builder<SyncNarrativeToServer, SyncNarrativeToServerBuilder> {
  _$SyncNarrativeToServer _$v;

  List<Gallery> _galleries;
  List<Gallery> get galleries => _$this._galleries;
  set galleries(List<Gallery> galleries) => _$this._galleries = galleries;

  SyncNarrativeToServerBuilder();

  SyncNarrativeToServerBuilder get _$this {
    if (_$v != null) {
      _galleries = _$v.galleries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncNarrativeToServer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncNarrativeToServer;
  }

  @override
  void update(void updates(SyncNarrativeToServerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncNarrativeToServer build() {
    final _$result = _$v ?? new _$SyncNarrativeToServer._(galleries: galleries);
    replace(_$result);
    return _$result;
  }
}

class _$SyncNarrativeToServerSuccessful
    extends SyncNarrativeToServerSuccessful {
  factory _$SyncNarrativeToServerSuccessful(
          [void updates(SyncNarrativeToServerSuccessfulBuilder b)]) =>
      (new SyncNarrativeToServerSuccessfulBuilder()..update(updates)).build();

  _$SyncNarrativeToServerSuccessful._() : super._();

  @override
  SyncNarrativeToServerSuccessful rebuild(
          void updates(SyncNarrativeToServerSuccessfulBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncNarrativeToServerSuccessfulBuilder toBuilder() =>
      new SyncNarrativeToServerSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncNarrativeToServerSuccessful;
  }

  @override
  int get hashCode {
    return 1039743225;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SyncNarrativeToServerSuccessful')
        .toString();
  }
}

class SyncNarrativeToServerSuccessfulBuilder
    implements
        Builder<SyncNarrativeToServerSuccessful,
            SyncNarrativeToServerSuccessfulBuilder> {
  _$SyncNarrativeToServerSuccessful _$v;

  SyncNarrativeToServerSuccessfulBuilder();

  @override
  void replace(SyncNarrativeToServerSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncNarrativeToServerSuccessful;
  }

  @override
  void update(void updates(SyncNarrativeToServerSuccessfulBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncNarrativeToServerSuccessful build() {
    final _$result = _$v ?? new _$SyncNarrativeToServerSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$SyncNarrativeToServerError extends SyncNarrativeToServerError {
  @override
  final String message;

  factory _$SyncNarrativeToServerError(
          [void updates(SyncNarrativeToServerErrorBuilder b)]) =>
      (new SyncNarrativeToServerErrorBuilder()..update(updates)).build();

  _$SyncNarrativeToServerError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'SyncNarrativeToServerError', 'message');
    }
  }

  @override
  SyncNarrativeToServerError rebuild(
          void updates(SyncNarrativeToServerErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncNarrativeToServerErrorBuilder toBuilder() =>
      new SyncNarrativeToServerErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncNarrativeToServerError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SyncNarrativeToServerError')
          ..add('message', message))
        .toString();
  }
}

class SyncNarrativeToServerErrorBuilder
    implements
        Builder<SyncNarrativeToServerError, SyncNarrativeToServerErrorBuilder> {
  _$SyncNarrativeToServerError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SyncNarrativeToServerErrorBuilder();

  SyncNarrativeToServerErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncNarrativeToServerError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SyncNarrativeToServerError;
  }

  @override
  void update(void updates(SyncNarrativeToServerErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SyncNarrativeToServerError build() {
    final _$result =
        _$v ?? new _$SyncNarrativeToServerError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
