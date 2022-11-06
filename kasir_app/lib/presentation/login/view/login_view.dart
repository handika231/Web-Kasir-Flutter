import 'package:flutter/material.dart';

import '../widgets/carousel_image_widget.dart';
import '../widgets/login_widget.dart';

class LoginView extends StatelessWidget {
  static const nameRoute = '/login';
  LoginView({super.key});

  final PageController _pageController = PageController();
  final int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CarouselImageWidget(
            pageController: _pageController,
            currentPage: _currentPage,
          ),
          const LoginWidget(),
        ],
      ),
    );
  }
}
