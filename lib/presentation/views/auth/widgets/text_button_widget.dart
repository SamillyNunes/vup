import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vup/presentation/core/app_colors.dart';

class TextButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onTapped;
  const TextButtonComponent({
    Key? key,
    required this.text,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTapped,
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
