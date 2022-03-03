import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';

import 'widgets/scheduled_class.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Text(
                "Aulas agendadas",
                style: AppTextStyles.largeTitleStyle.copyWith(
                  color: AppColors.purpleMain,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            SizedBox(
              height: 17.h,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: const [
                  ScheduledClass(isFirstWidget: true),
                  ScheduledClass(),
                  ScheduledClass(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
