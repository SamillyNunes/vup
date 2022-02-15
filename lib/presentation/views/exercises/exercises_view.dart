import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/local_database.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/exercises/widgets/exercise_card.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({Key? key}) : super(key: key);

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
              "Exercícios",
              style: AppTextStyles.largeTitleStyle.copyWith(
                color: AppColors.purpleMain,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: LocalDatabase.exercises.length,
              itemBuilder: (ctx, index) => ExerciseCard(
                exerciseModel: LocalDatabase.exercises[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
