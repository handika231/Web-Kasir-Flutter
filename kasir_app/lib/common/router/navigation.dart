import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:kasir_app/common/style.dart';
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '404'.toPNG,
              height: 500,
              width: 500,
            ),
            const Text(
              'Maaf halaman yang anda cari tidak ditemukan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: AppStyle.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
