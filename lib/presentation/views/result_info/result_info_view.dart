import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/auth/auth_view.dart';

class ResultInfoView extends StatelessWidget {
  final String resultMessage;
  final IconData icon;

  const ResultInfoView({
    Key? key,
    required this.resultMessage,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 7.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      color: AppColors.purpleMain,
                      size: 5.h,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      resultMessage,
                      style: AppTextStyles.largeTitleStyle.copyWith(
                        color: AppColors.purpleMain,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: AppButton(
                  label: "Ir para menu inicial",
                  onTapped: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
