import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kasir_app/common/navigation.dart';
import 'package:kasir_app/presentation/login/provider/login_notifier.dart';
import 'package:kasir_app/presentation/login/view/login_view.dart';
import 'package:kasir_app/presentation/menu/provider/menu_provider.dart';
import 'package:provider/provider.dart';

import '../common/routes.dart';

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
              ChangeNotifierProvider(
                create: (_) => MenuNotifier(),
              ),
            ],
            child: MaterialApp(
              initialRoute: '/',
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
              onGenerateRoute: RoutesGenerator.generateRoute,
              home: const LoginView(),
              navigatorKey: navigationKey,
              debugShowCheckedModeBanner: false,
              title: 'Cashier GMJ App',
            ),
          );
        }
      },
    );
  }
}
