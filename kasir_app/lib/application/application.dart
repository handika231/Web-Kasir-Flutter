import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/login/view/login_view.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 960) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Mobile'),
              ),
            ),
          );
        } else {
          return MaterialApp(
            home: LoginView(),
            debugShowCheckedModeBanner: false,
            title: 'Cashier GMJ App',
          );
        }
      },
    );
  }
}
