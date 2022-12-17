import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kasir_app/common/utils/pref_helper.dart';

import '../../presentation/login/view/login_view.dart';
import '../../presentation/menu/view/menu_view.dart';

class Navigation {
  PrefHelper prefHelper = PrefHelper();
  static final GoRouter router = GoRouter(
    errorBuilder: (context, state) => const ErrorView(),
    routerNeglect: true,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'login',
        builder: (context, state) => const LoginView(),
        redirect: (context, state) async {
          final prefHelper = PrefHelper();

          if (await prefHelper.getToken() == '') {
            return '/';
          } else {
            return '/menu';
          }
        },
      ),
      GoRoute(
        path: '/menu',
        name: 'menu',
        builder: (context, state) => const MenuView(),
        redirect: (context, state) async {
          final prefHelper = PrefHelper();

          if (await prefHelper.getToken() == '') {
            return '/';
          } else {
            return '/menu';
          }
        },
      ),
    ],
  );
}

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Error Page'),
      ),
    );
  }
}
