import 'package:flutter/material.dart';

class MainPagesViewModel {
  final pagesNotifier = ValueNotifier<int>(0);
  int get pageIndex => pagesNotifier.value;
  set pageIndex(int index) => pagesNotifier.value = index;

  final pagesViewController = PageController();
}
