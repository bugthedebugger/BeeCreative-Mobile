// GENERATED CODE - DO NOT MODIFY BY HAND

part of momo_feed;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MomoFeed> _$momoFeedSerializer = new _$MomoFeedSerializer();

class _$MomoFeedSerializer implements StructuredSerializer<MomoFeed> {
  @override
  final Iterable<Type> types = const [MomoFeed, _$MomoFeed];
  @override
  final String wireName = 'MomoFeed';

  @override
  Iterable serialize(Serializers serializers, MomoFeed object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'bank',
      serializers.serialize(object.bank, specifiedType: const FullType(Bank)),
    ];
    if (object.feed != null) {
      result
        ..add('feed')
        ..add(serializers.serialize(object.feed,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Feed)])));
    }
    if (object.leaderboard != null) {
      result
        ..add('leaderboard')
        ..add(serializers.serialize(object.leaderboard,
            specifiedType:
                const FullType(BuiltList, const [const FullType(User)])));
    }

    return result;
  }

  @override
  MomoFeed deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MomoFeedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bank':
          result.bank.replace(serializers.deserialize(value,
              specifiedType: const FullType(Bank)) as Bank);
          break;
        case 'feed':
          result.feed.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Feed)]))
              as BuiltList);
          break;
        case 'leaderboard':
          result.leaderboard.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(User)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MomoFeed extends MomoFeed {
  @override
  final Bank bank;
  @override
  final BuiltList<Feed> feed;
  @override
  final BuiltList<User> leaderboard;

  factory _$MomoFeed([void updates(MomoFeedBuilder b)]) =>
      (new MomoFeedBuilder()..update(updates)).build();

  _$MomoFeed._({this.bank, this.feed, this.leaderboard}) : super._() {
    if (bank == null) {
      throw new BuiltValueNullFieldError('MomoFeed', 'bank');
    }
  }

  @override
  MomoFeed rebuild(void updates(MomoFeedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MomoFeedBuilder toBuilder() => new MomoFeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MomoFeed &&
        bank == other.bank &&
        feed == other.feed &&
        leaderboard == other.leaderboard;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, bank.hashCode), feed.hashCode), leaderboard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MomoFeed')
          ..add('bank', bank)
          ..add('feed', feed)
          ..add('leaderboard', leaderboard))
        .toString();
  }
}

class MomoFeedBuilder implements Builder<MomoFeed, MomoFeedBuilder> {
  _$MomoFeed _$v;

  BankBuilder _bank;
  BankBuilder get bank => _$this._bank ??= new BankBuilder();
  set bank(BankBuilder bank) => _$this._bank = bank;

  ListBuilder<Feed> _feed;
  ListBuilder<Feed> get feed => _$this._feed ??= new ListBuilder<Feed>();
  set feed(ListBuilder<Feed> feed) => _$this._feed = feed;

  ListBuilder<User> _leaderboard;
  ListBuilder<User> get leaderboard =>
      _$this._leaderboard ??= new ListBuilder<User>();
  set leaderboard(ListBuilder<User> leaderboard) =>
      _$this._leaderboard = leaderboard;

  MomoFeedBuilder();

  MomoFeedBuilder get _$this {
    if (_$v != null) {
      _bank = _$v.bank?.toBuilder();
      _feed = _$v.feed?.toBuilder();
      _leaderboard = _$v.leaderboard?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MomoFeed other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MomoFeed;
  }

  @override
  void update(void updates(MomoFeedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MomoFeed build() {
    _$MomoFeed _$result;
    try {
      _$result = _$v ??
          new _$MomoFeed._(
              bank: bank.build(),
              feed: _feed?.build(),
              leaderboard: _leaderboard?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'bank';
        bank.build();
        _$failedField = 'feed';
        _feed?.build();
        _$failedField = 'leaderboard';
        _leaderboard?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MomoFeed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
