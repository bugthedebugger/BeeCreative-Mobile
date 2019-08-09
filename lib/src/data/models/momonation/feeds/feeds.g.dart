// GENERATED CODE - DO NOT MODIFY BY HAND

part of feeds;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feeds> _$feedsSerializer = new _$FeedsSerializer();

class _$FeedsSerializer implements StructuredSerializer<Feeds> {
  @override
  final Iterable<Type> types = const [Feeds, _$Feeds];
  @override
  final String wireName = 'Feeds';

  @override
  Iterable serialize(Serializers serializers, Feeds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'feed',
      serializers.serialize(object.feed,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Feed)])),
    ];

    return result;
  }

  @override
  Feeds deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'feed':
          result.feed.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Feed)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Feeds extends Feeds {
  @override
  final BuiltList<Feed> feed;

  factory _$Feeds([void updates(FeedsBuilder b)]) =>
      (new FeedsBuilder()..update(updates)).build();

  _$Feeds._({this.feed}) : super._() {
    if (feed == null) {
      throw new BuiltValueNullFieldError('Feeds', 'feed');
    }
  }

  @override
  Feeds rebuild(void updates(FeedsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedsBuilder toBuilder() => new FeedsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feeds && feed == other.feed;
  }

  @override
  int get hashCode {
    return $jf($jc(0, feed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feeds')..add('feed', feed)).toString();
  }
}

class FeedsBuilder implements Builder<Feeds, FeedsBuilder> {
  _$Feeds _$v;

  ListBuilder<Feed> _feed;
  ListBuilder<Feed> get feed => _$this._feed ??= new ListBuilder<Feed>();
  set feed(ListBuilder<Feed> feed) => _$this._feed = feed;

  FeedsBuilder();

  FeedsBuilder get _$this {
    if (_$v != null) {
      _feed = _$v.feed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feeds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feeds;
  }

  @override
  void update(void updates(FeedsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Feeds build() {
    _$Feeds _$result;
    try {
      _$result = _$v ?? new _$Feeds._(feed: feed.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'feed';
        feed.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Feeds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
