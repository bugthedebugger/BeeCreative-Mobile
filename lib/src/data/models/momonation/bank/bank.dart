library bank;

import 'dart:convert';

import 'package:BeeCreative/src/data/models/serializer/momonation_serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bank.g.dart';

abstract class Bank implements Built<Bank, BankBuilder> {
  int get cooked;
  int get raw;

  Bank._();

  factory Bank([updates(BankBuilder b)]) = _$Bank;

  String toJson() {
    return json.encode(serializers.serializeWith(Bank.serializer, this));
  }

  static Bank fromJson(String jsonString) {
    return serializers.deserializeWith(
        Bank.serializer, json.decode(jsonString));
  }

  static Serializer<Bank> get serializer => _$bankSerializer;
}
