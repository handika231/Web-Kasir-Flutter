import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';
import 'package:intership_01/common/style.dart';

import '../widgets/item_text_field_widget.dart';

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
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: blackColor,
              child: Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'logo'.path,
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const ItemTextFieldWidget(
                          hintText: 'Username', text: 'Username'),
                      const SizedBox(
                        height: 20,
                      ),
                      const ItemTextFieldWidget(
                        hintText: 'Password',
                        text: 'Password',
                        isPassword: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
