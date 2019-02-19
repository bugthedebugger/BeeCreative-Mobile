// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserData> _$userDataSerializer = new _$UserDataSerializer();

class _$UserDataSerializer implements StructuredSerializer<UserData> {
  @override
  final Iterable<Type> types = const [UserData, _$UserData];
  @override
  final String wireName = 'UserData';

  @override
  Iterable serialize(Serializers serializers, UserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user_name',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'photo',
      serializers.serialize(object.photo,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'expires_at',
      serializers.serialize(object.expiresAt,
          specifiedType: const FullType(String)),
    ];
    if (object.phone1 != null) {
      result
        ..add('phone1')
        ..add(serializers.serialize(object.phone1,
            specifiedType: const FullType(int)));
    }
    if (object.phone2 != null) {
      result
        ..add('phone2')
        ..add(serializers.serialize(object.phone2,
            specifiedType: const FullType(int)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  UserData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone1':
          result.phone1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phone2':
          result.phone2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserData extends UserData {
  @override
  final String userName;
  @override
  final String email;
  @override
  final String photo;
  @override
  final String token;
  @override
  final String expiresAt;
  @override
  final int phone1;
  @override
  final int phone2;
  @override
  final String address;
  @override
  final String bio;

  factory _$UserData([void updates(UserDataBuilder b)]) =>
      (new UserDataBuilder()..update(updates)).build();

  _$UserData._(
      {this.userName,
      this.email,
      this.photo,
      this.token,
      this.expiresAt,
      this.phone1,
      this.phone2,
      this.address,
      this.bio})
      : super._() {
    if (userName == null) {
      throw new BuiltValueNullFieldError('UserData', 'userName');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('UserData', 'email');
    }
    if (photo == null) {
      throw new BuiltValueNullFieldError('UserData', 'photo');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('UserData', 'token');
    }
    if (expiresAt == null) {
      throw new BuiltValueNullFieldError('UserData', 'expiresAt');
    }
  }

  @override
  UserData rebuild(void updates(UserDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataBuilder toBuilder() => new UserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserData &&
        userName == other.userName &&
        email == other.email &&
        photo == other.photo &&
        token == other.token &&
        expiresAt == other.expiresAt &&
        phone1 == other.phone1 &&
        phone2 == other.phone2 &&
        address == other.address &&
        bio == other.bio;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, userName.hashCode), email.hashCode),
                                photo.hashCode),
                            token.hashCode),
                        expiresAt.hashCode),
                    phone1.hashCode),
                phone2.hashCode),
            address.hashCode),
        bio.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserData')
          ..add('userName', userName)
          ..add('email', email)
          ..add('photo', photo)
          ..add('token', token)
          ..add('expiresAt', expiresAt)
          ..add('phone1', phone1)
          ..add('phone2', phone2)
          ..add('address', address)
          ..add('bio', bio))
        .toString();
  }
}

class UserDataBuilder implements Builder<UserData, UserDataBuilder> {
  _$UserData _$v;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _expiresAt;
  String get expiresAt => _$this._expiresAt;
  set expiresAt(String expiresAt) => _$this._expiresAt = expiresAt;

  int _phone1;
  int get phone1 => _$this._phone1;
  set phone1(int phone1) => _$this._phone1 = phone1;

  int _phone2;
  int get phone2 => _$this._phone2;
  set phone2(int phone2) => _$this._phone2 = phone2;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  UserDataBuilder();

  UserDataBuilder get _$this {
    if (_$v != null) {
      _userName = _$v.userName;
      _email = _$v.email;
      _photo = _$v.photo;
      _token = _$v.token;
      _expiresAt = _$v.expiresAt;
      _phone1 = _$v.phone1;
      _phone2 = _$v.phone2;
      _address = _$v.address;
      _bio = _$v.bio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserData;
  }

  @override
  void update(void updates(UserDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserData build() {
    final _$result = _$v ??
        new _$UserData._(
            userName: userName,
            email: email,
            photo: photo,
            token: token,
            expiresAt: expiresAt,
            phone1: phone1,
            phone2: phone2,
            address: address,
            bio: bio);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
