import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';

class FormPaymentCard extends StatelessWidget {
  final String name;

  const FormPaymentCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 20.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: AppColors.purplew100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(
              Icons.home,
              size: 25.w,
              color: AppColors.white,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20.sp, color: AppColors.white),
            )
          ],
        ),
      ),
      onDoubleTap: () {},
    );
  }
}
