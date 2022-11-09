import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:kasir_app/presentation/menu/page/menu_view.dart';
import 'package:provider/provider.dart';

import '../presentation/login/provider/login_notifier.dart';
import '../presentation/login/view/login_view.dart';
import '../presentation/menu/provider/menu_provider.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => MenuNotifier(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('id', ''),
        supportedLocales: const [
          Locale('en', ''),
          Locale('id', ''),
        ],
        debugShowCheckedModeBanner: false,
        title: 'Cashier GMJ App',
      ),
    );
  }
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/menu',
      builder: (context, state) => const MenuView(),
    ),
  ],
);
