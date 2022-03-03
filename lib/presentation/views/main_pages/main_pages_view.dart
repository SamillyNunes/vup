import 'package:flutter/material.dart';
import 'package:vup/presentation/shared/widgets/bottom_menu/bottom_menu.dart';
import 'package:vup/presentation/shared/widgets/custom_app_bar.dart';
import 'package:vup/presentation/views/community/community_view.dart';
import 'package:vup/presentation/views/customer_payment/customer_payment_view.dart';
import 'package:vup/presentation/views/exercises/exercises_view.dart';
import 'package:vup/presentation/views/home/home_view.dart';
import 'package:vup/presentation/views/home_customer/home_customer_view.dart';
import 'package:vup/presentation/views/payments/payments_view.dart';
import 'package:vup/presentation/views/schedule_class/schedule_class_view.dart';
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
        onAddTapped: () {
          print("add tapped");
          if (!widget.isPersonal) {
            print("add tapped 2");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const ScheduleClassView(),
              ),
            );
          }
        },
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
              : const CustomerPaymentView(),
          const SettingView(),
        ],
      ),
    );
  }
}
