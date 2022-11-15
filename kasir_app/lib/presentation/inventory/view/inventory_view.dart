import 'package:flutter/material.dart';

import '../../menu/widgets/menu_scaffold.dart';

class InventoryView extends StatelessWidget {
  const InventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: const Center(
        child: Text('Data Barang Gadai'),
      ),
      title: 'Data Barang Gadai',
    );
  }
}
