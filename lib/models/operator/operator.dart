import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator.freezed.dart';

@freezed
class Operator with _$Operator {
  factory Operator() = _Operator;
  factory Operator.add(double num1, double num2) = AddOperator;
  factory Operator.minus(double num1, double num2) = MinusOperator;
}
