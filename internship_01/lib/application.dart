import 'package:flutter/material.dart';
import 'package:intership_01/common/navigation.dart';
import 'package:intership_01/presentation/pages/customer_page.dart';
import 'package:intership_01/presentation/pages/login_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Internship - 01',
      initialRoute: LoginPage.nameRoute,
      routes: {
        LoginPage.nameRoute: (context) => LoginPage(),
        CustomerPage.nameRoute: (context) => const CustomerPage(),
      },
    );
  }
}
