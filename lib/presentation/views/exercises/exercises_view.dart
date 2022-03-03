import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/local_database_personal.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/exercises/widgets/abstract_exercise_card.dart';
import 'package:vup/presentation/views/exercises/widgets/gain_weight_card.dart';
import 'package:vup/presentation/views/exercises/widgets/low_weight_card.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({Key? key}) : super(key: key);

  Widget buildLowExercises() {
    List<Widget> lowExercises = LocalDatabasePersonal.lowExercises
        .map((e) => LowWeightCard(e).create())
        .toList();

    return ListView(
      children: lowExercises,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }

  Widget buildGainExercises() {
    List<Widget> gainExercises = LocalDatabasePersonal.lowExercises
        .map((e) => GainWeightCard(e).create())
        .toList();

    return ListView(
      children: gainExercises,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }

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
            buildLowExercises(),
            buildGainExercises(),
          ],
        ),
      ),
    );
  }
}
