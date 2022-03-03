// ignore_for_file: avoid_print
import 'package:vup/presentation/shared/services/i_payment.dart';
import 'package:vup/presentation/shared/value_objects/pix.dart';

class PIXPaymentStrategy implements IPayment {
  PIX? pix;

  PIXPaymentStrategy({this.pix});

  @override
  Future<bool> pay() async {
    print('Pagamento via PIX conectado ao servidor');
    print("Pagamento realizado");

    return true;
  }
}
