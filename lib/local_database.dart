import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/views/exercises/models/gain_weight_exercise_model.dart';
import 'package:vup/presentation/views/exercises/models/low_weight_exercise_model.dart';
import 'package:vup/presentation/views/home/models/level_enum.dart';
import 'package:vup/presentation/views/payments/models/customer_model.dart';

class LocalDatabase {
  static final List<LowWeightExerciseModel> lowExercises = [
    LowWeightExerciseModel(
      title: "Prancha",
      description: "Estenda o corpo para baixo utilizando ",
      level: LevelEnum.easy,
      imageUrl: AppImages.pranchaPng,
    ),
    LowWeightExerciseModel(
      title: "Martelo",
      description: "Estenda o corpo para baixo utilizando ",
      level: LevelEnum.hard,
      imageUrl: AppImages.marteloPng,
    ),
  ];

  static final List<GainWeightExerciseModel> gainExercises = [
    GainWeightExerciseModel(
      title: "Halteres",
      description: "Estenda o corpo para baixo utilizando ",
      level: LevelEnum.intermediary,
      imageUrl: AppImages.halterPng,
    ),
  ];

  static final List<CustomerModel> customers = [
    CustomerModel(
      name: "Ana Maria",
      imageUrl: AppImages.girlAvatarPng,
      level: LevelEnum.easy,
      gym: "Acquafit",
      isInDebit: true,
    ),
    CustomerModel(
      name: "Fernanda Silva",
      imageUrl: AppImages.girlAvatarPng,
      level: LevelEnum.hard,
      gym: "Max Forma",
      isInDebit: false,
    ),
    CustomerModel(
      name: "Fabiana",
      imageUrl: AppImages.girlAvatarPng,
      level: LevelEnum.intermediary,
      gym: "Acquafit",
      isInDebit: true,
    ),
  ];
}
