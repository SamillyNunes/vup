import 'package:vup/presentation/views/pay_debt/services/i_payment.dart';
import 'package:vup/presentation/views/pay_debt/value_objects/pix.dart';

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
