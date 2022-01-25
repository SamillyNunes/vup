import 'package:flutter/material.dart';
import 'package:vup/presentation/core/app_colors.dart';

class CustomAppBar extends PreferredSize {
  final String label;
  final VoidCallback onAddTapped;

  CustomAppBar(this.label, this.onAddTapped, {Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(87),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.purpleMain,
                  AppColors.purplew300,
                ],
              ),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "VUP",
                      ),
                      Text(
                        label,
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        );
}
