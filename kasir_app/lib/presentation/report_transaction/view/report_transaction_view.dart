import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

class ReportTransactionView extends StatelessWidget {
  const ReportTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: const Center(
        child: Text('Report Transaction View'),
      ),
      title: 'Laporan Transaksi',
    );
  }
}
