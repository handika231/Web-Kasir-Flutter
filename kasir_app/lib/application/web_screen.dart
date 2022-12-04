import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kasir_app/presentation/customer_data/provider/edit_data_notifier.dart';
import 'package:kasir_app/presentation/report_transaction/provider/report_transaction_notifier.dart';
import 'package:provider/provider.dart';

import '../common/router/navigation.dart';
import '../injector.dart' as di;
import '../presentation/login/provider/login_notifier.dart';
import '../presentation/menu/provider/menu_provider.dart';
import '../presentation/profile/provider/profile_notifier.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<LoginNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => MenuNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<ProfileNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => EditDataNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => ReportTransactionNotifier(),
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
