import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vup/presentation/core/app_colors.dart';

class TextButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback function;
  const TextButtonComponent({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
