// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostComment extends PostComment {
  @override
  final String comment;
  @override
  final Feed feed;

  factory _$PostComment([void Function(PostCommentBuilder) updates]) =>
      (new PostCommentBuilder()..update(updates)).build();

  _$PostComment._({this.comment, this.feed}) : super._() {
    if (comment == null) {
      throw new BuiltValueNullFieldError('PostComment', 'comment');
    }
    if (feed == null) {
      throw new BuiltValueNullFieldError('PostComment', 'feed');
    }
  }

  @override
  PostComment rebuild(void Function(PostCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostCommentBuilder toBuilder() => new PostCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostComment &&
        comment == other.comment &&
        feed == other.feed;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, comment.hashCode), feed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostComment')
          ..add('comment', comment)
          ..add('feed', feed))
        .toString();
  }
}

class PostCommentBuilder implements Builder<PostComment, PostCommentBuilder> {
  _$PostComment _$v;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  FeedBuilder _feed;
  FeedBuilder get feed => _$this._feed ??= new FeedBuilder();
  set feed(FeedBuilder feed) => _$this._feed = feed;

  PostCommentBuilder();

  PostCommentBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment;
      _feed = _$v.feed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostComment;
  }

  @override
  void update(void Function(PostCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostComment build() {
    _$PostComment _$result;
    try {
      _$result =
          _$v ?? new _$PostComment._(comment: comment, feed: feed.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'feed';
        feed.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommentPosted extends CommentPosted {
  factory _$CommentPosted([void Function(CommentPostedBuilder) updates]) =>
      (new CommentPostedBuilder()..update(updates)).build();

  _$CommentPosted._() : super._();

  @override
  CommentPosted rebuild(void Function(CommentPostedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentPostedBuilder toBuilder() => new CommentPostedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentPosted;
  }

  @override
  int get hashCode {
    return 92029376;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CommentPosted').toString();
  }
}

class CommentPostedBuilder
    implements Builder<CommentPosted, CommentPostedBuilder> {
  _$CommentPosted _$v;

  CommentPostedBuilder();

  @override
  void replace(CommentPosted other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentPosted;
  }

  @override
  void update(void Function(CommentPostedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentPosted build() {
    final _$result = _$v ?? new _$CommentPosted._();
    replace(_$result);
    return _$result;
  }
}

class _$CommentError extends CommentError {
  @override
  final String message;

  factory _$CommentError([void Function(CommentErrorBuilder) updates]) =>
      (new CommentErrorBuilder()..update(updates)).build();

  _$CommentError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('CommentError', 'message');
    }
  }

  @override
  CommentError rebuild(void Function(CommentErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentErrorBuilder toBuilder() => new CommentErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentError')
          ..add('message', message))
        .toString();
  }
}

class CommentErrorBuilder
    implements Builder<CommentError, CommentErrorBuilder> {
  _$CommentError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CommentErrorBuilder();

  CommentErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentError;
  }

  @override
  void update(void Function(CommentErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentError build() {
    final _$result = _$v ?? new _$CommentError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
