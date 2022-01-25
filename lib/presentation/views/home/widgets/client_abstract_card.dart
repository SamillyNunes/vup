import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/home/models/level_enum.dart';

class ClientAbstractCard extends StatelessWidget {
  final String name;
  final LevelEnum level;
  final String gymName;
  final String imagePath;

  const ClientAbstractCard({
    Key? key,
    required this.name,
    required this.level,
    required this.gymName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
      ),
      child: Container(
        height: 15.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.purplew300,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 2.h,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 5.h,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.smallBoldTitleStyle,
                  ),
                  Text(
                    gymName,
                    style: AppTextStyles.smallThinLabelStyle,
                  ),
                  Text(
                    "Nível ${level.toShortString()}",
                    style: AppTextStyles.smallThinLabelStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
