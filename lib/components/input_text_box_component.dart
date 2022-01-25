import 'package:flutter/material.dart';

import 'package:vup/presentation/core/app_colors.dart';

class InputTextBoxComponent extends StatelessWidget {
  final String labelText;
  const InputTextBoxComponent({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        focusColor: Colors.white,
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
