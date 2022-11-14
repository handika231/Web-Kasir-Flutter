import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

import '../widgets/custom_count_cash_opname.dart';

class CashOpnameView extends StatelessWidget {
  const CashOpnameView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Cash Opname ',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: const [
                  CustomCountCashOpname(
                    title: 'Total',
                    linearColor: [
                      Color(0xff00CE7B),
                      Color(0xff03B06A),
                    ],
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  CustomCountCashOpname(
                    title: 'Dalam Dompet',
                    linearColor: [
                      Color(0xff7D6BEC),
                      Color(0xff2A1A8F),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
