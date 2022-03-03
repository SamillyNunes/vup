import 'value_object.dart';

abstract class BankSlip extends ValueObject<String> {
  BankSlip(String value) : super(value);
}
