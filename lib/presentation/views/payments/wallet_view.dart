import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/shared/widgets/custom_toggle.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

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
            Padding(
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
                        "Ana Maria",
                        style: AppTextStyles.smallBoldTitleStyle,
                      ),
                    ),
                    CustomToggle(
                      onTapped: () {},
                      isEnabled: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
