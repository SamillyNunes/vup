import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';

class CustomToggle extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onTapped;

  const CustomToggle({
    Key? key,
    this.isEnabled = false,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 6.w,
        height: 6.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.white,
          ),
        ),
        padding: const EdgeInsets.all(3),
        child: isEnabled
            ? SvgPicture.asset(
                AppImages.checkIcon,
                color: AppColors.white,
              )
            : Container(),
      ),
    );
  }
}
