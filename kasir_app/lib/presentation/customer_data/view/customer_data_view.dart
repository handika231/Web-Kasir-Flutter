import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

class CustomerDataView extends StatelessWidget {
  const CustomerDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: const Center(
        child: Text('Data Nasabah'),
      ),
      title: 'Data Nasabah',
    );
  }
}
