// GENERATED CODE - DO NOT MODIFY BY HAND

part of momonation_bloc_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFeed extends GetFeed {
  factory _$GetFeed([void Function(GetFeedBuilder) updates]) =>
      (new GetFeedBuilder()..update(updates)).build();

  _$GetFeed._() : super._();

  @override
  GetFeed rebuild(void Function(GetFeedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFeedBuilder toBuilder() => new GetFeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFeed;
  }

  @override
  int get hashCode {
    return 276301153;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetFeed').toString();
  }
}

class GetFeedBuilder implements Builder<GetFeed, GetFeedBuilder> {
  _$GetFeed _$v;

  GetFeedBuilder();

  @override
  void replace(GetFeed other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFeed;
  }

  @override
  void update(void Function(GetFeedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFeed build() {
    final _$result = _$v ?? new _$GetFeed._();
    replace(_$result);
    return _$result;
  }
}

class _$FeedLoadSuccess extends FeedLoadSuccess {
  @override
  final MomoFeed feed;

  factory _$FeedLoadSuccess([void Function(FeedLoadSuccessBuilder) updates]) =>
      (new FeedLoadSuccessBuilder()..update(updates)).build();

  _$FeedLoadSuccess._({this.feed}) : super._() {
    if (feed == null) {
      throw new BuiltValueNullFieldError('FeedLoadSuccess', 'feed');
    }
  }

  @override
  FeedLoadSuccess rebuild(void Function(FeedLoadSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedLoadSuccessBuilder toBuilder() =>
      new FeedLoadSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedLoadSuccess && feed == other.feed;
  }

  @override
  int get hashCode {
    return $jf($jc(0, feed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedLoadSuccess')..add('feed', feed))
        .toString();
  }
}

class FeedLoadSuccessBuilder
    implements Builder<FeedLoadSuccess, FeedLoadSuccessBuilder> {
  _$FeedLoadSuccess _$v;

  MomoFeedBuilder _feed;
  MomoFeedBuilder get feed => _$this._feed ??= new MomoFeedBuilder();
  set feed(MomoFeedBuilder feed) => _$this._feed = feed;

  FeedLoadSuccessBuilder();

  FeedLoadSuccessBuilder get _$this {
    if (_$v != null) {
      _feed = _$v.feed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedLoadSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedLoadSuccess;
  }

  @override
  void update(void Function(FeedLoadSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedLoadSuccess build() {
    _$FeedLoadSuccess _$result;
    try {
      _$result = _$v ?? new _$FeedLoadSuccess._(feed: feed.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'feed';
        feed.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedLoadSuccess', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MomonationSuccess extends MomonationSuccess {
  @override
  final String message;

  factory _$MomonationSuccess(
          [void Function(MomonationSuccessBuilder) updates]) =>
      (new MomonationSuccessBuilder()..update(updates)).build();

  _$MomonationSuccess._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('MomonationSuccess', 'message');
    }
  }

  @override
  MomonationSuccess rebuild(void Function(MomonationSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MomonationSuccessBuilder toBuilder() =>
      new MomonationSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MomonationSuccess && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MomonationSuccess')
          ..add('message', message))
        .toString();
  }
}

class MomonationSuccessBuilder
    implements Builder<MomonationSuccess, MomonationSuccessBuilder> {
  _$MomonationSuccess _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  MomonationSuccessBuilder();

  MomonationSuccessBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MomonationSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MomonationSuccess;
  }

  @override
  void update(void Function(MomonationSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MomonationSuccess build() {
    final _$result = _$v ?? new _$MomonationSuccess._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$MomonationError extends MomonationError {
  @override
  final String message;

  factory _$MomonationError([void Function(MomonationErrorBuilder) updates]) =>
      (new MomonationErrorBuilder()..update(updates)).build();

  _$MomonationError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('MomonationError', 'message');
    }
  }

  @override
  MomonationError rebuild(void Function(MomonationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MomonationErrorBuilder toBuilder() =>
      new MomonationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MomonationError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MomonationError')
          ..add('message', message))
        .toString();
  }
}

class MomonationErrorBuilder
    implements Builder<MomonationError, MomonationErrorBuilder> {
  _$MomonationError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  MomonationErrorBuilder();

  MomonationErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MomonationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MomonationError;
  }

  @override
  void update(void Function(MomonationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MomonationError build() {
    final _$result = _$v ?? new _$MomonationError._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$NoInternetEvent extends NoInternetEvent {
  @override
  final String message;

  factory _$NoInternetEvent([void Function(NoInternetEventBuilder) updates]) =>
      (new NoInternetEventBuilder()..update(updates)).build();

  _$NoInternetEvent._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('NoInternetEvent', 'message');
    }
  }

  @override
  NoInternetEvent rebuild(void Function(NoInternetEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoInternetEventBuilder toBuilder() =>
      new NoInternetEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoInternetEvent && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoInternetEvent')
          ..add('message', message))
        .toString();
  }
}

class NoInternetEventBuilder
    implements Builder<NoInternetEvent, NoInternetEventBuilder> {
  _$NoInternetEvent _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  NoInternetEventBuilder();

  NoInternetEventBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoInternetEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NoInternetEvent;
  }

  @override
  void update(void Function(NoInternetEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoInternetEvent build() {
    final _$result = _$v ?? new _$NoInternetEvent._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$Retry extends Retry {
  factory _$Retry([void Function(RetryBuilder) updates]) =>
      (new RetryBuilder()..update(updates)).build();

  _$Retry._() : super._();

  @override
  Retry rebuild(void Function(RetryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetryBuilder toBuilder() => new RetryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Retry;
  }

  @override
  int get hashCode {
    return 449104613;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Retry').toString();
  }
}

class RetryBuilder implements Builder<Retry, RetryBuilder> {
  _$Retry _$v;

  RetryBuilder();

  @override
  void replace(Retry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Retry;
  }

  @override
  void update(void Function(RetryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Retry build() {
    final _$result = _$v ?? new _$Retry._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
