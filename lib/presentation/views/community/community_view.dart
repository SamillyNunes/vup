import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(7.w),
          child: Column(
            children: [
              Text(
                "Comunidade",
                style: AppTextStyles.largeTitleStyle.copyWith(
                  color: AppColors.purpleMain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
