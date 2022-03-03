import 'i_payment.dart';

class PaymentService {
  IPayment? payment;

  set paymentStrategy(IPayment? payment) =>
      this.payment = payment; //Setando a estrategia, principio aberto fechado

  Future<void> pay() async {
    await payment?.pay();
  }
}
