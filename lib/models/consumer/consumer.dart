import 'package:dart_generation/models/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consumer.freezed.dart';
part 'consumer.g.dart';

@freezed
class Consumer with _$Consumer {
  const factory Consumer({
    required String name,
    required Address address,
  }) = _Consumer;

  factory Consumer.fromJson(Map<String, dynamic> json) =>
      _$ConsumerFromJson(json);
}
