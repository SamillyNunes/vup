import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/views/exercises/models/exercise_model.dart';
import 'package:vup/presentation/views/home/models/level_enum.dart';

class LocalDatabase {
  static final List<ExerciseModel> exercises = [
    ExerciseModel(
      title: "Prancha",
      description: "Estenda o corpo para baixo utilizando ",
      level: LevelEnum.easy,
      imageUrl: AppImages.pranchaPng,
    ),
    ExerciseModel(
      title: "Halteres",
      description: "Estenda o corpo para baixo utilizando ",
      level: LevelEnum.intermediary,
      imageUrl: AppImages.halterPng,
    ),
    ExerciseModel(
      title: "Martelo",
      description: "Estenda o corpo para baixo utilizando ",
      level: LevelEnum.hard,
      imageUrl: AppImages.marteloPng,
    ),
  ];
}
