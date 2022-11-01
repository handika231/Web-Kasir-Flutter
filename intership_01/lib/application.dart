import 'package:flutter/material.dart';
import 'package:intership_01/presentation/pages/login_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intership - 01',
      home: LoginPage(),
    );
  }
}
