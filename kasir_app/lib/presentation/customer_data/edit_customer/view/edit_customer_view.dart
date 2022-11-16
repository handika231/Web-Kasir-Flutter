import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

class EditCustomerView extends StatelessWidget {
  const EditCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: const Text('Edit Customer'),
      title: 'Edit Customer',
    );
  }
}
