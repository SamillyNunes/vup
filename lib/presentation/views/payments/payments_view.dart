import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/local_database.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/shared/widgets/custom_toggle.dart';
import 'package:vup/presentation/views/payments/widgets/customer_list_tile.dart';

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
              "Clientes em dia",
              style: AppTextStyles.largeTitleStyle.copyWith(
                color: AppColors.purpleMain,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: LocalDatabase.customers.length,
              itemBuilder: (context, index) => CustomerListTile(
                customerModel: LocalDatabase.customers[index],
                customerIndex: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
