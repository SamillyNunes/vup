import 'package:flutter/material.dart';
import 'package:vup/presentation/shared/widgets/bottom_menu/bottom_menu.dart';
import 'package:vup/presentation/shared/widgets/custom_app_bar.dart';
import 'package:vup/presentation/views/home/home_view.dart';

class MainPagesView extends StatefulWidget {
  const MainPagesView({Key? key}) : super(key: key);

  @override
  _MainPagesViewState createState() => _MainPagesViewState();
}

class _MainPagesViewState extends State<MainPagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "16 de janeiro de 2022",
        onAddTapped: () {},
        context: context,
      ),
      bottomNavigationBar: const BottomMenu(),
      body: PageView(
        children: const [
          HomeView(),
        ],
      ),
    );
  }
}
