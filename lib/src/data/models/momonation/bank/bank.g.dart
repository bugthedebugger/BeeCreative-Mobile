// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Bank> _$bankSerializer = new _$BankSerializer();

class _$BankSerializer implements StructuredSerializer<Bank> {
  @override
  final Iterable<Type> types = const [Bank, _$Bank];
  @override
  final String wireName = 'Bank';

  @override
  Iterable<Object> serialize(Serializers serializers, Bank object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cooked',
      serializers.serialize(object.cooked, specifiedType: const FullType(int)),
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Bank deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BankBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cooked':
          result.cooked = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'raw':
          result.raw = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Bank extends Bank {
  @override
  final int cooked;
  @override
  final int raw;

  factory _$Bank([void Function(BankBuilder) updates]) =>
      (new BankBuilder()..update(updates)).build();

  _$Bank._({this.cooked, this.raw}) : super._() {
    if (cooked == null) {
      throw new BuiltValueNullFieldError('Bank', 'cooked');
    }
    if (raw == null) {
      throw new BuiltValueNullFieldError('Bank', 'raw');
    }
  }

  @override
  Bank rebuild(void Function(BankBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankBuilder toBuilder() => new BankBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bank && cooked == other.cooked && raw == other.raw;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cooked.hashCode), raw.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Bank')
          ..add('cooked', cooked)
          ..add('raw', raw))
        .toString();
  }
}

class BankBuilder implements Builder<Bank, BankBuilder> {
  _$Bank _$v;

  int _cooked;
  int get cooked => _$this._cooked;
  set cooked(int cooked) => _$this._cooked = cooked;

  int _raw;
  int get raw => _$this._raw;
  set raw(int raw) => _$this._raw = raw;

  BankBuilder();

  BankBuilder get _$this {
    if (_$v != null) {
      _cooked = _$v.cooked;
      _raw = _$v.raw;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bank other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Bank;
  }

  @override
  void update(void Function(BankBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Bank build() {
    final _$result = _$v ?? new _$Bank._(cooked: cooked, raw: raw);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
