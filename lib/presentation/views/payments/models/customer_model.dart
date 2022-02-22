import 'package:vup/presentation/views/home/models/level_enum.dart';

class CustomerModel {
  final String name;
  final String imageUrl;
  final LevelEnum level;
  final String gym;
  bool isInDebit;

  CustomerModel({
    required this.name,
    required this.imageUrl,
    required this.level,
    required this.gym,
    required this.isInDebit,
  });

  set changeIsInDebit(bool value) => isInDebit = value;
}
