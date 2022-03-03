import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/local_database_clients.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/shared/widgets/custom_toggle.dart';
import 'package:vup/presentation/views/payments/models/customer_model.dart';

class CustomerListTile extends StatefulWidget {
  final CustomerModel customerModel;
  final int customerIndex;

  const CustomerListTile({
    Key? key,
    required this.customerModel,
    required this.customerIndex,
  }) : super(key: key);

  @override
  State<CustomerListTile> createState() => _CustomerListTileState();
}

class _CustomerListTileState extends State<CustomerListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
      ),
      child: Container(
        height: 10.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.purplew300,
        ),
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Row(
          children: [
            CircleAvatar(
              radius: 5.w,
              backgroundImage: const AssetImage(
                AppImages.girlAvatarPng,
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                widget.customerModel.name,
                style: AppTextStyles.smallBoldTitleStyle,
              ),
            ),
            CustomToggle(
              onTapped: () {
                setState(
                  () {
                    LocalDatabase.customers[widget.customerIndex]
                        .changeIsInDebit = !widget.customerModel.isInDebit;
                  },
                );

                // customerModel.changeIsInDebit = !customerModel.isInDebit;
              },
              isEnabled: widget.customerModel.isInDebit,
            ),
          ],
        ),
      ),
    );
  }
}
