import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/views/exercises/models/exercise_model.dart';
import 'package:vup/presentation/views/exercises/models/low_weight_exercise_model.dart';
import 'package:vup/presentation/views/exercises/widgets/abstract_exercise_card.dart';

class GainWeightCard extends AbstractExerciseCard {
  GainWeightCard(ExerciseModel exerciseModel)
      : super(exerciseModel: exerciseModel);

  @override
  Widget build({required Widget child}) {
    return Container(
      height: 15.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.green,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      child: child,
    );
  }
}
