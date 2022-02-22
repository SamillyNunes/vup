import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';

class BottomMenuButton extends StatelessWidget {
  final String name;
  final String icon;
  final VoidCallback onTapped;
  final bool isActive;

  const BottomMenuButton({
    Key? key,
    required this.name,
    required this.icon,
    required this.onTapped,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: AppColors.white,
            height: 3.h,
          ),
          if (isActive)
            Text(
              name,
              style: AppTextStyles.smallLabelStyle,
            ),
        ],
      ),
    );
  }
}
