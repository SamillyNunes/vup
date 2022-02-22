import 'package:flutter/material.dart';

import 'package:vup/presentation/core/app_colors.dart';

class InputTextFormFieldWidget extends StatelessWidget {
  final String labelText;
  const InputTextFormFieldWidget({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.white),
    );

    return TextFormField(
      style: const TextStyle(
        color: AppColors.white,
      ),
      decoration: InputDecoration(
        focusColor: Colors.white,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
