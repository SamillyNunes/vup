import 'package:vup/presentation/views/home/models/level_enum.dart';

abstract class ExerciseModel {
  final String title;
  final String description;
  final LevelEnum level;
  final String imageUrl;

  ExerciseModel({
    required this.title,
    required this.description,
    required this.level,
    required this.imageUrl,
  });

  void exerciseTime();
}
