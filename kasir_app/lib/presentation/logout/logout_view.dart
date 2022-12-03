import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kasir_app/presentation/login/provider/login_notifier.dart';
import 'package:provider/provider.dart';

import '../menu/provider/menu_provider.dart';

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  State<LogOutPage> createState() => _LogOutPageState();
}

class _LogOutPageState extends State<LogOutPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MenuNotifier>(context, listen: false).changeIndex(0);
      context.read<LoginNotifier>().logout(context).then((_) {
        context.replace('/');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
