import 'package:flutter/material.dart';

import 'mobile_screen.dart';
import 'web_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 1200) {
          return const MobileScreen();
        }
        return const WebScreen();
      },
    );
  }
}
