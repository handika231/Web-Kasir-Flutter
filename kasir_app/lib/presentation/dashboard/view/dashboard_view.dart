import 'package:flutter/material.dart';

import '../../menu/widgets/menu_scaffold.dart';
import '../widgets/card_assurance_widget.dart';
import '../widgets/card_balance_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: const [
                  CardAssuranceWidget(),
                  SizedBox(
                    width: 24,
                  ),
                  CardBalanceWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
