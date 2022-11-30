import 'package:flutter/material.dart';

import '../common/extension.dart';
import '../common/style.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MobileApp(),
    );
  }
}

class MobileApp extends StatelessWidget {
  const MobileApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'empty'.toPNG,
              width: context.width,
              height: 300,
            ),
            const SizedBox(height: 32),
            const Text(
              'Tidak disupport untuk layar kurang dari 1200 pixel',
              style: TextStyle(
                fontWeight: AppStyle.light,
                color: AppStyle.textSecondaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
