import 'presentation/views/home/models/simple_exercise_model.dart';

class LocalDatabaseCustomers {
  static final List<SimpleExerciseModel> exercises = [
    SimpleExerciseModel(
      imageUrl: 'assets/images/jpg/halter.jpg',
      name: 'Rosca Biceps alternada',
      frequency: '3x12',
    ),
    SimpleExerciseModel(
      imageUrl: 'assets/images/jpg/halter.jpg',
      name: 'Leg45',
      frequency: '3x12',
    ),
    SimpleExerciseModel(
      imageUrl: 'assets/images/jpg/halter.jpg',
      name: 'Esteira',
      frequency: '10 min.',
    ),
    SimpleExerciseModel(
      imageUrl: 'assets/images/jpg/halter.jpg',
      name: 'Elevação frontal de ombros',
      frequency: '3x12',
    ),
    SimpleExerciseModel(
      imageUrl: 'assets/images/jpg/halter.jpg',
      name: 'Supino inclinado',
      frequency: '3x12',
    ),
  ];

  static final List<String> teachers = [
    "Fernando",
    "Maiara",
    "Ana",
  ];

  static final Map<String, List<DateTime>> teachersHours = {
    "Fernando": [
      DateTime(2022, 3, 3, 9, 0),
      DateTime(2022, 3, 3, 9, 0).add(const Duration(days: 1)),
    ],
    "Maiara": [
      DateTime(2022, 3, 3, 9, 0),
      DateTime(2022, 3, 3, 9, 0).add(const Duration(days: 1)),
    ],
    "Ana": [
      DateTime(2022, 3, 3, 9, 0),
      DateTime(2022, 3, 3, 9, 0).add(const Duration(days: 1)),
    ],
  };

  static final Map<String, dynamic> gymHours = {
    "Max Forma": [
      DateTime(2022, 3, 4, 9, 0),
      DateTime(2022, 3, 4, 10, 0),
    ],
    "Acquafit": [
      DateTime(2022, 3, 3, 9, 0),
      DateTime(2022, 3, 3, 9, 0).add(const Duration(days: 1)),
    ],
    "Top": [
      DateTime(2022, 3, 3, 9, 0),
      DateTime(2022, 3, 3, 9, 0).add(const Duration(days: 1)),
    ],
    "Academia 10": [
      DateTime(2022, 3, 3, 9, 0),
      DateTime(2022, 3, 3, 9, 0).add(const Duration(days: 1)),
    ],
  };

  static final List<String> availableGyms = [
    "Max Forma",
    "Acquafit",
    "Top",
    "Academia 10",
  ];
}
