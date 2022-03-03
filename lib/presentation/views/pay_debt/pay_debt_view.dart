import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/shared/services/i_payment.dart';
import 'package:vup/presentation/shared/services/payment_service.dart';
import 'package:vup/presentation/shared/strategies/bank_slip_payment_strategy.dart';
import 'package:vup/presentation/shared/strategies/pix_payment_strategy.dart';
import 'package:vup/presentation/shared/value_objects/pix.dart';
import 'package:vup/presentation/views/pay_debt/widgets/custom_appbar_pay_debt.dart';

//import 'widgets/form_payment_card.dart';

class PayDebtView extends StatefulWidget {
  const PayDebtView({Key? key}) : super(key: key);

  @override
  State<PayDebtView> createState() => _PayDebtViewState();
}

class _PayDebtViewState extends State<PayDebtView> {
  late IPayment pixPayment;
  late IPayment bankSlipPayment;
  IPayment? selectedPayment;
  late PaymentService paymentService;
  late PIX pix;

  @override
  void initState() {
    super.initState();

    paymentService = PaymentService();
    pixPayment = PIXPaymentStrategy();
    bankSlipPayment = BankSlipPaymentStrategy();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarPayDebt(
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: SizedBox(
            height: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 5.h),
                Column(
                  children: [
                    Text(
                      'Mensalidade Academia Max',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    const Text('Academia'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Vencimento: "),
                        Text("20/03/2022",
                            style: TextStyle(color: AppColors.purpleMain)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Valor: "),
                        Text("R\$ 55:00",
                            style: TextStyle(color: AppColors.purpleMain)),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
                      Text(
                        'Pagar via',
                        style: AppTextStyles.largeTitleStyle.copyWith(
                          color: AppColors.purpleMain,
                        ),
                      ),
                      Row(
                        children: [
                          const Text('Boleto'),
                          Radio<IPayment>(
                            value: bankSlipPayment,
                            groupValue: selectedPayment,
                            onChanged: (IPayment? iPayment) {
                              setPayment(iPayment);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('PIX'),
                          Radio<IPayment>(
                            value: pixPayment,
                            groupValue: selectedPayment,
                            onChanged: (IPayment? iPayment) {
                              setPayment(iPayment);
                            },
                          ),
                        ],
                      ),

                      /*
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FormPaymentCard(name: 'PIX'),
                            FormPaymentCard(name: 'BOLETO'),
                          ])*/
                      TextButton(onPressed: firePay, child: const Text("Pagar"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setPayment(IPayment? iPayment) {
    setState(() {
      selectedPayment = iPayment;
      paymentService.paymentStrategy = iPayment;
    });
  }

  Future<void> firePay() async {
    await paymentService.pay();
  }
}
