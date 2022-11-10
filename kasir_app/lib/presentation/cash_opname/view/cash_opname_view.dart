import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

class CashOpnameView extends StatelessWidget {
  const CashOpnameView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: const Center(
        child: Text('Cash Opname '),
      ),
      title: 'Cash Opname ',
    );
  }
}
