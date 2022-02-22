import 'dart:convert';

import 'package:vup/presentation/views/home/models/level_enum.dart';

class ExerciseModel {
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

  ExerciseModel copyWith({
    String? title,
    String? description,
    LevelEnum? level,
    String? imageUrl,
  }) {
    return ExerciseModel(
      title: title ?? this.title,
      description: description ?? this.description,
      level: level ?? this.level,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'level': level.toShortString(),
      'imageUrl': imageUrl,
    };
  }

  factory ExerciseModel.fromMap(Map<String, dynamic> map) {
    String level = map['level'];

    return ExerciseModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      level: level.fromShortString(),
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ExerciseModel.fromJson(String source) =>
      ExerciseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ExerciseModel(title: $title, description: $description, level: $level, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExerciseModel &&
        other.title == title &&
        other.description == description &&
        other.level == level &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        level.hashCode ^
        imageUrl.hashCode;
  }
}
