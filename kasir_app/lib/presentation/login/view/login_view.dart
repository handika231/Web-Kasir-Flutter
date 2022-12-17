import 'package:flutter/material.dart';

import '../widgets/widget_login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Future.value(false),
      child: Scaffold(
        body: Row(
          children: const [
            CarouselImageWidget(),
            LoginWidget(),
          ],
        ),
      ),
    );
  }
}
