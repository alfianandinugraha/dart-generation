import 'dart:convert';

import 'package:dart_generation/models/address/address.dart';
import 'package:dart_generation/models/consumer/consumer.dart';
import 'package:dart_generation/models/operator/operator.dart';
import 'package:dart_generation/models/user/user.dart';

void separator() {
  print("--------------------------");
}

void main(List<String> arguments) {
  User user = User(name: "Inosuke");
  User user2 = User(name: "Inosuke");
  print("$user == $user2: ${user == user2}");
  separator();

  String userJson = '{"name":"madara"}';
  User user3 = User.fromJson(json.decode(userJson));
  print("$userJson to User model: $user3");
  separator();

  var addValue = AddOperator(2.0, 3.0);
  var result = addValue.map<double?>(
    (value) => null,
    add: (AddOperator value) {
      return value.num1 + value.num2;
    },
    minus: (MinusOperator value) => value.num1 - value.num2,
  );
  print("result: $result");
  print("addValue is Operator: ${addValue is Operator}");
  separator();

  Address address = Address(
    country: "Indonesia",
    city: "Surabaya",
  );
  Consumer consumer = Consumer(
    name: "Kira",
    address: address,
  );
  print("consumer: $consumer");
  separator();

  String consumerBody =
      '''
    {
      "name": "jojo",
      "address": {
        "country": "Russia",
        "city": "Moscow"
      }
    }
  ''';
  var consumerJson = json.decode(consumerBody);
  Consumer newConsumer = Consumer.fromJson(consumerJson);
  print("consumerBody: $consumerBody");
  print("convert consumerBody to Consumer: $newConsumer");
}
