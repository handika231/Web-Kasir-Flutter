import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/dashboard/page/dashboard_view.dart';
import 'package:kasir_app/presentation/login/view/login_view.dart';
import 'package:kasir_app/presentation/menu/page/menu_view.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case '/dashboard':
        return MaterialPageRoute(
          builder: (_) => const DashboardView(),
        );
      case '/menu':
        return MaterialPageRoute(
          builder: (_) => const MenuView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Error View'),
      ),
    );
  }
}
