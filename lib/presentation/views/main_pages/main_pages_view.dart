import 'package:flutter/material.dart';
import 'package:vup/presentation/shared/widgets/bottom_menu/bottom_menu.dart';
import 'package:vup/presentation/shared/widgets/custom_app_bar.dart';
import 'package:vup/presentation/views/community/community_view.dart';
import 'package:vup/presentation/views/exercises/exercises_view.dart';
import 'package:vup/presentation/views/home/home_view.dart';
import 'package:vup/presentation/views/home_customer/home_customer_view.dart';
import 'package:vup/presentation/views/payments/payments_view.dart';
import 'package:vup/presentation/views/setting/setting_view.dart';

import 'main_pages_view_model.dart';

class MainPagesView extends StatefulWidget {
  final bool isPersonal;
  const MainPagesView({Key? key, required this.isPersonal}) : super(key: key);

  @override
  _MainPagesViewState createState() => _MainPagesViewState();
}

class _MainPagesViewState extends State<MainPagesView> {
  final MainPagesViewModel mainPagesViewModel = MainPagesViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "16 de janeiro de 2022",
        onAddTapped: () {},
        context: context,
      ),
      bottomNavigationBar: BottomMenu(
        mainPagesViewModel: mainPagesViewModel,
        isPersonal: widget.isPersonal,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: mainPagesViewModel.pagesViewController,
        children: [
          widget.isPersonal ? const HomeView() : const HomeCustomerView(),
          widget.isPersonal ? const ExercisesView() : const CommunityView(),
          widget.isPersonal
              ? const PaymentsView()
              : Container(color: Colors.red),
          const SettingView(),
        ],
      ),
    );
  }
}
