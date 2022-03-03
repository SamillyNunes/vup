import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/views/pay_debt/widgets/custom_appbar_pay_debt.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarPayDebt(context: context),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 100.h,
          width: 100.w,
          color: AppColors.purplew100,
          child: Padding(
            padding: EdgeInsets.all(7.w),
            child: Column(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 0.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: AppColors.purpleMain,
                    size: 60.sp,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
