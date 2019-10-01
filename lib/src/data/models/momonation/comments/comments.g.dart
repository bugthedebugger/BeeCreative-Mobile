// GENERATED CODE - DO NOT MODIFY BY HAND

part of comments;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comments> _$commentsSerializer = new _$CommentsSerializer();

class _$CommentsSerializer implements StructuredSerializer<Comments> {
  @override
  final Iterable<Type> types = const [Comments, _$Comments];
  @override
  final String wireName = 'Comments';

  @override
  Iterable<Object> serialize(Serializers serializers, Comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
    ];

    return result;
  }

  @override
  Comments deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Comments extends Comments {
  @override
  final BuiltList<Comment> comments;

  factory _$Comments([void Function(CommentsBuilder) updates]) =>
      (new CommentsBuilder()..update(updates)).build();

  _$Comments._({this.comments}) : super._() {
    if (comments == null) {
      throw new BuiltValueNullFieldError('Comments', 'comments');
    }
  }

  @override
  Comments rebuild(void Function(CommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsBuilder toBuilder() => new CommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comments && comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comments')..add('comments', comments))
        .toString();
  }
}

class CommentsBuilder implements Builder<Comments, CommentsBuilder> {
  _$Comments _$v;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  CommentsBuilder();

  CommentsBuilder get _$this {
    if (_$v != null) {
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comments;
  }

  @override
  void update(void Function(CommentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comments build() {
    _$Comments _$result;
    try {
      _$result = _$v ?? new _$Comments._(comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
