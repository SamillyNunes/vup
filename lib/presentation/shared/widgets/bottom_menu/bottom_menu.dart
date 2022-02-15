import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/views/main_pages/main_pages_view_model.dart';

import 'bottom_menu_buttom.dart';

class BottomMenu extends StatelessWidget {
  final MainPagesViewModel mainPagesViewModel;
  const BottomMenu({Key? key, required this.mainPagesViewModel})
      : super(key: key);

  void jumpToPage(int index) {
    mainPagesViewModel.pageIndex = index;
    mainPagesViewModel.pagesViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

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
        child: ValueListenableBuilder(
            valueListenable: mainPagesViewModel.pagesNotifier,
            builder: (_, int index, __) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomMenuButton(
                    name: "Clientes",
                    icon: AppImages.groupIcon,
                    onTapped: () => jumpToPage(0),
                    isActive: index == 0,
                  ),
                  BottomMenuButton(
                    name: "Exercícios",
                    icon: AppImages.haltersIcon,
                    onTapped: () => jumpToPage(1),
                    isActive: index == 1,
                  ),
                  BottomMenuButton(
                    name: "Carteira",
                    icon: AppImages.walletIcon,
                    onTapped: () => jumpToPage(2),
                    isActive: index == 2,
                  ),
                  BottomMenuButton(
                    name: "Configurações",
                    icon: AppImages.settingsIcon,
                    onTapped: () => jumpToPage(3),
                    isActive: index == 3,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
