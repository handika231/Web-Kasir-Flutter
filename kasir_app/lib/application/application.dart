import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/login/provider/login_notifier.dart';
import 'package:kasir_app/presentation/login/view/login_view.dart';
import 'package:provider/provider.dart';

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
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => LoginNotifier(),
              ),
            ],
            child: MaterialApp(
              home: LoginView(),
              debugShowCheckedModeBanner: false,
              title: 'Cashier GMJ App',
            ),
          );
        }
      },
    );
  }
}
