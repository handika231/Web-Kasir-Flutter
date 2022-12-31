import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kasir_app/presentation/transaction/provider/gadai_notifier.dart';
import 'package:provider/provider.dart';

import '../common/router/navigation.dart';
import '../injector.dart' as di;
import '../presentation/customer_data/provider/edit_data_notifier.dart';
import '../presentation/customer_data/provider/table_customer_notifier.dart';
import '../presentation/inventory/provider/inventory_notifier.dart';
import '../presentation/login/provider/login_notifier.dart';
import '../presentation/menu/provider/menu_notifier.dart';
import '../presentation/profile/provider/profile_notifier.dart';
import '../presentation/report_transaction/provider/report_transaction_notifier.dart';
import '../presentation/transaction/provider/transaction_notifier.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<GadaiNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<LoginNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<MenuNotifier>(),
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
        ChangeNotifierProvider(
          create: (_) => TransactionNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TableCustomerNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<InventoryNotifier>(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            extensions: const []),
        routerConfig: Navigation.router,
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
