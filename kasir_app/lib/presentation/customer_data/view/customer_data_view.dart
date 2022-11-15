import 'package:flutter/material.dart';
import 'package:kasir_app/common/style.dart';
import 'package:kasir_app/presentation/customer_data/widgets/table_customer_widget.dart';

import '../../menu/widgets/menu_scaffold.dart';
import '../widgets/heading_customer_widget.dart';

class CustomerDataView extends StatelessWidget {
  const CustomerDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: Expanded(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppStyle.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListView(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 14,
            ),
            children: const [
              HeadingCustomerWidget(),
              SizedBox(
                height: 21,
              ),
              TableCustomerWidget(),
            ],
          ),
        ),
      ),
      title: 'Data Nasabah',
    );
  }
}
