import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_images.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/shared/widgets/bottom_menu/bottom_menu.dart';
import 'package:vup/presentation/shared/widgets/custom_app_bar.dart';
import 'package:vup/presentation/views/home/models/level_enum.dart';

import 'widgets/client_abstract_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "16 de janeiro de 2022",
        onAddTapped: () {},
        context: context,
      ),
      bottomNavigationBar: const BottomMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 7.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              Text(
                "Clientes",
                style: AppTextStyles.largeTitleStyle.copyWith(
                  color: AppColors.purpleMain,
                ),
              ),
              const ClientAbstractCard(
                name: "Ana Maria",
                level: LevelEnum.easy,
                gymName: "Acquafit",
                imagePath: AppImages.girlAvatarPng,
              ),
              const ClientAbstractCard(
                name: "Samilly Nunes",
                level: LevelEnum.intermediary,
                gymName: "MaxForma",
                imagePath: AppImages.girlAvatarPng,
              ),
              const ClientAbstractCard(
                name: "Samilly Nunes",
                level: LevelEnum.intermediary,
                gymName: "MaxForma",
                imagePath: AppImages.girlAvatarPng,
              ),
              const ClientAbstractCard(
                name: "Samilly Nunes",
                level: LevelEnum.intermediary,
                gymName: "MaxForma",
                imagePath: AppImages.girlAvatarPng,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
