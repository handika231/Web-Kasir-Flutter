import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';
import 'package:intership_01/common/navigation.dart';
import 'package:intership_01/presentation/pages/customer_page.dart';
import 'package:intership_01/presentation/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 900) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'sorry'.lottie,
                    ),
                    const Text('Sorry this app is not supported on mobile'),
                  ],
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
          );
        } else {
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
      },
    );
  }
}
