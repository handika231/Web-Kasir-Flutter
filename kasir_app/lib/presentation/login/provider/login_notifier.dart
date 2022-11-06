import 'package:flutter/material.dart';

class LoginNotifier extends ChangeNotifier {
  int currentIndex = 0;
  final PageController pageController = PageController();

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
