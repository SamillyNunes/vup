import 'package:vup/presentation/views/exercises/models/exercise_model.dart';
import 'package:vup/presentation/views/home/models/level_enum.dart';

class GainWeightExerciseModel extends ExerciseModel {
  GainWeightExerciseModel({
    required String title,
    required String description,
    required LevelEnum level,
    required String imageUrl,
  }) : super(
          title: title,
          description: description,
          level: level,
          imageUrl: imageUrl,
        );

  @override
  void exerciseTime() {
    print('1 hours training');
  }
}
