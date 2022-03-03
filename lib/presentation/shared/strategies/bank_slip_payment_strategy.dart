// ignore_for_file: avoid_print

import 'package:vup/presentation/shared/services/i_payment.dart';
import 'package:vup/presentation/shared/value_objects/bank_slip.dart';

class BankSlipPaymentStrategy implements IPayment {
  BankSlip? entity;

  BankSlipPaymentStrategy({this.entity});

  @override
  Future<bool> pay() async {
    print('Pagamento via Boleto bancário conectado ao servidor');
    print("Pagamento realizado");

    return true;
  }
}
