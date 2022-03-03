import 'dart:convert';

class SimpleExerciseModel {
  final String imageUrl;
  final String name;
  final String frequency;
  SimpleExerciseModel({
    required this.imageUrl,
    required this.name,
    required this.frequency,
  });

  SimpleExerciseModel copyWith({
    String? imageUrl,
    String? name,
    String? frequency,
  }) {
    return SimpleExerciseModel(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      frequency: frequency ?? this.frequency,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imageUrl': imageUrl});
    result.addAll({'name': name});
    result.addAll({'frequency': frequency});

    return result;
  }

  factory SimpleExerciseModel.fromMap(Map<String, dynamic> map) {
    return SimpleExerciseModel(
      imageUrl: map['imageUrl'] ?? '',
      name: map['name'] ?? '',
      frequency: map['frequency'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SimpleExerciseModel.fromJson(String source) =>
      SimpleExerciseModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'SimpleExerciseModel(imageUrl: $imageUrl, name: $name, frequency: $frequency)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SimpleExerciseModel &&
        other.imageUrl == imageUrl &&
        other.name == name &&
        other.frequency == frequency;
  }

  @override
  int get hashCode => imageUrl.hashCode ^ name.hashCode ^ frequency.hashCode;
}
