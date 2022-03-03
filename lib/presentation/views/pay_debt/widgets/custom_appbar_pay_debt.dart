import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';

class CustomAppBarPayDebt extends PreferredSize {
  final BuildContext context;
  CustomAppBarPayDebt({Key? key, required this.context})
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
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top,
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: AppColors.white,
                        size: 5.h,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: AppColors.white,
                    size: 5.h,
                  ),
                ),
              ],
            ),
          ),
        );
}
