import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';
import 'package:intership_01/common/style.dart';

import '../widgets/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: whiteColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'bg-login'.path,
                      width: 500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const LoginWidget(),
        ],
      ),
    );
  }
}
