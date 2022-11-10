import 'package:flutter/material.dart';

import '../../menu/widgets/menu_scaffold.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Transaksi',
      body: const Center(
        child: Text('Transaksi'),
      ),
    );
  }
}
