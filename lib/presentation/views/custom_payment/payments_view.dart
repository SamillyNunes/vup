import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup_client/presentation/core/app_colors.dart';
import 'package:vup_client/presentation/core/app_text_styles.dart';
import 'package:vup_client/presentation/views/pay_debt/pay_debt_view.dart';
import 'package:vup_client/presentation/views/payments/widgets/historic_card.dart';
import 'package:vup_client/presentation/views/payments/widgets/monthly_payment_card.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 7.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Text(
              'Mensalidades',
              style: AppTextStyles.largeTitleStyle.copyWith(
                color: AppColors.purpleMain,
              ),
            ),
            const Divider(color: Colors.transparent),
            GestureDetector(
              child: const MonthlyPaymentCard(),
              onDoubleTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PayDebtView(),
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Histórico',
                  style: AppTextStyles.largeTitleStyle.copyWith(
                    color: AppColors.purpleMain,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ver mais',
                    style: TextStyle(color: AppColors.purpleMain),
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.transparent),
            const Text("Ultima transação"),
            const Divider(color: Colors.transparent),
            const HistoricCard(),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Parceiros e Cupons',
                  style: AppTextStyles.largeTitleStyle.copyWith(
                    color: AppColors.purpleMain,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ver mais',
                    style: TextStyle(color: AppColors.purpleMain),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Divider(color: Colors.transparent),
                Image.asset(
                  'assets/images/jpg/logoMax.jpg',
                  height: 23.h,
                  width: 19.h,
                ),
                Image.asset(
                  'assets/images/jpg/logoCentauro.jpg',
                  height: 23.h,
                  width: 19.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
