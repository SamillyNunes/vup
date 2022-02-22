import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/exercises/models/exercise_model.dart';
import 'package:vup/presentation/views/home/models/level_enum.dart';

class ExerciseCard extends StatelessWidget {
  final ExerciseModel exerciseModel;
  const ExerciseCard({Key? key, required this.exerciseModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LevelEnum level = exerciseModel.level;

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
        padding: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 2,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 15.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.horizontal(
                    start: Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  exerciseModel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exerciseModel.title,
                    style: AppTextStyles.smallBoldTitleStyle,
                  ),
                  Text(
                    exerciseModel.description,
                    style: AppTextStyles.smallThinLabelStyle,
                    overflow: TextOverflow.ellipsis,
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
