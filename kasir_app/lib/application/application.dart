import 'package:flutter/material.dart';
import 'package:kasir_app/application/mobile_screen.dart';
import 'package:kasir_app/application/web_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 960) {
          return const MobileScreen();
        }
        return const WebScreen();
      },
    );
  }
}
