import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/core/app_text_styles.dart';

import 'bottom_menu_buttom.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 11,
      child: Container(
        height: 8.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.purplew200,
              AppColors.purplew300,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomMenuButton(
              name: "Clientes",
              icon: AppImages.groupIcon,
              onTapped: () {},
              isActive: true,
            ),
            BottomMenuButton(
              name: "Exercícios",
              icon: AppImages.haltersIcon,
              onTapped: () {},
            ),
            BottomMenuButton(
              name: "Carteira",
              icon: AppImages.walletIcon,
              onTapped: () {},
            ),
            BottomMenuButton(
              name: "Configurações",
              icon: AppImages.settingsIcon,
              onTapped: () {},
            ),
          ],
        ),
      ),
    );
  }
}
