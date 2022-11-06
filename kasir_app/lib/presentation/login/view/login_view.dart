import 'package:flutter/material.dart';

import '../widgets/widget_login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CarouselImageWidget(),
          const LoginWidget(),
        ],
      ),
    );
  }
}
