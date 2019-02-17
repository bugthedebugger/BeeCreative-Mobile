// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoogleUser> _$googleUserSerializer = new _$GoogleUserSerializer();

class _$GoogleUserSerializer implements StructuredSerializer<GoogleUser> {
  @override
  final Iterable<Type> types = const [GoogleUser, _$GoogleUser];
  @override
  final String wireName = 'GoogleUser';

  @override
  Iterable serialize(Serializers serializers, GoogleUser object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  GoogleUser deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GoogleUserBuilder().build();
  }
}

class _$GoogleUser extends GoogleUser {
  factory _$GoogleUser([void updates(GoogleUserBuilder b)]) =>
      (new GoogleUserBuilder()..update(updates)).build();

  _$GoogleUser._() : super._();

  @override
  GoogleUser rebuild(void updates(GoogleUserBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleUserBuilder toBuilder() => new GoogleUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleUser;
  }

  @override
  int get hashCode {
    return 204549792;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GoogleUser').toString();
  }
}

class GoogleUserBuilder implements Builder<GoogleUser, GoogleUserBuilder> {
  _$GoogleUser _$v;

  GoogleUserBuilder();

  @override
  void replace(GoogleUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GoogleUser;
  }

  @override
  void update(void updates(GoogleUserBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleUser build() {
    final _$result = _$v ?? new _$GoogleUser._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
