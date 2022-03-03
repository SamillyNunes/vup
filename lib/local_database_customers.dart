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
}
