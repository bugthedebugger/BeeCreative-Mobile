// GENERATED CODE - DO NOT MODIFY BY HAND

part of feed;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feed> _$feedSerializer = new _$FeedSerializer();

class _$FeedSerializer implements StructuredSerializer<Feed> {
  @override
  final Iterable<Type> types = const [Feed, _$Feed];
  @override
  final String wireName = 'Feed';

  @override
  Iterable serialize(Serializers serializers, Feed object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'likedByMe',
      serializers.serialize(object.likedByMe,
          specifiedType: const FullType(bool)),
      'sender',
      serializers.serialize(object.sender, specifiedType: const FullType(User)),
      'receiver',
      serializers.serialize(object.receiver,
          specifiedType: const FullType(User)),
    ];
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Comment)])));
    }

    return result;
  }

  @override
  Feed deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'likedByMe':
          result.likedByMe = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sender':
          result.sender.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'receiver':
          result.receiver.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Comment)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Feed extends Feed {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String time;
  @override
  final int amount;
  @override
  final int likes;
  @override
  final bool likedByMe;
  @override
  final User sender;
  @override
  final User receiver;
  @override
  final BuiltList<Comment> comments;

  factory _$Feed([void updates(FeedBuilder b)]) =>
      (new FeedBuilder()..update(updates)).build();

  _$Feed._(
      {this.id,
      this.title,
      this.description,
      this.time,
      this.amount,
      this.likes,
      this.likedByMe,
      this.sender,
      this.receiver,
      this.comments})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Feed', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Feed', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Feed', 'description');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('Feed', 'time');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('Feed', 'amount');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Feed', 'likes');
    }
    if (likedByMe == null) {
      throw new BuiltValueNullFieldError('Feed', 'likedByMe');
    }
    if (sender == null) {
      throw new BuiltValueNullFieldError('Feed', 'sender');
    }
    if (receiver == null) {
      throw new BuiltValueNullFieldError('Feed', 'receiver');
    }
  }

  @override
  Feed rebuild(void updates(FeedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedBuilder toBuilder() => new FeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feed &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        time == other.time &&
        amount == other.amount &&
        likes == other.likes &&
        likedByMe == other.likedByMe &&
        sender == other.sender &&
        receiver == other.receiver &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), title.hashCode),
                                    description.hashCode),
                                time.hashCode),
                            amount.hashCode),
                        likes.hashCode),
                    likedByMe.hashCode),
                sender.hashCode),
            receiver.hashCode),
        comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feed')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('time', time)
          ..add('amount', amount)
          ..add('likes', likes)
          ..add('likedByMe', likedByMe)
          ..add('sender', sender)
          ..add('receiver', receiver)
          ..add('comments', comments))
        .toString();
  }
}

class FeedBuilder implements Builder<Feed, FeedBuilder> {
  _$Feed _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  int _amount;
  int get amount => _$this._amount;
  set amount(int amount) => _$this._amount = amount;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  bool _likedByMe;
  bool get likedByMe => _$this._likedByMe;
  set likedByMe(bool likedByMe) => _$this._likedByMe = likedByMe;

  UserBuilder _sender;
  UserBuilder get sender => _$this._sender ??= new UserBuilder();
  set sender(UserBuilder sender) => _$this._sender = sender;

  UserBuilder _receiver;
  UserBuilder get receiver => _$this._receiver ??= new UserBuilder();
  set receiver(UserBuilder receiver) => _$this._receiver = receiver;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  FeedBuilder();

  FeedBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _time = _$v.time;
      _amount = _$v.amount;
      _likes = _$v.likes;
      _likedByMe = _$v.likedByMe;
      _sender = _$v.sender?.toBuilder();
      _receiver = _$v.receiver?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feed other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feed;
  }

  @override
  void update(void updates(FeedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Feed build() {
    _$Feed _$result;
    try {
      _$result = _$v ??
          new _$Feed._(
              id: id,
              title: title,
              description: description,
              time: time,
              amount: amount,
              likes: likes,
              likedByMe: likedByMe,
              sender: sender.build(),
              receiver: receiver.build(),
              comments: _comments?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sender';
        sender.build();
        _$failedField = 'receiver';
        receiver.build();
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Feed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
