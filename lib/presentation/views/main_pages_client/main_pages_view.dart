import 'package:flutter/material.dart';
import 'package:vup_client/presentation/shared/widgets/bottom_menu/bottom_menu.dart';
import 'package:vup_client/presentation/shared/widgets/custom_app_bar.dart';
import 'package:vup_client/presentation/views/home/home_view.dart';
import 'package:vup_client/presentation/views/main_pages/main_pages_view_model.dart';
import 'package:vup_client/presentation/views/payments/payments_view.dart';
import 'package:vup_client/presentation/views/setting/setting_view.dart';

class MainPagesView extends StatefulWidget {
  const MainPagesView({Key? key}) : super(key: key);

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
      bottomNavigationBar: BottomMenu(mainPagesViewModel: mainPagesViewModel),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: mainPagesViewModel.pagesViewController,
        children: [
          const HomeView(),
          Container(
            color: Colors.black,
          ),
          //CommunityView(),
          const PaymentsView(),
          const SettingView(),
        ],
      ),
    );
  }
}
