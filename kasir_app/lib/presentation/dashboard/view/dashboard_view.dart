import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/extension.dart';
import '../../menu/widgets/menu_scaffold.dart';
import '../widgets/card_assurance_widget.dart';
import '../widgets/card_balance_widget.dart';
import '../widgets/custom_card_description.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
      body: Expanded(
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
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
              CustomCardDescription(
                linearColor: const [
                  Color(0xff7D6BEC),
                  Color(0xff2A1A8F),
                ],
                price: const [
                  'Rp 1.000.000',
                  'Rp 100.000',
                  'Rp 50.000',
                  'Rp 100.000',
                ],
                description: const [
                  'Jasa',
                  'Expense',
                  'Uang Nota',
                  'Selisih Jual',
                ],
                imgAsset: [
                  'ic-jasa'.toPNG,
                  'ic-expense'.toPNG,
                  'ic-nota'.toPNG,
                  'ic-jual'.toPNG,
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomCardDescription(
                linearColor: const [
                  Color(0xff3EE7A3),
                  Color(0xff007143),
                ],
                price: const [
                  'Rp 1.000.000',
                  'Rp 10.000.000',
                  'Rp 200.000',
                  'Rp 4.000.000',
                ],
                description: const [
                  'MTD Jasa',
                  'MTD Expense',
                  'MTD Nota',
                  'Bruto Cabang'
                ],
                imgAsset: [
                  'ic-mtd-jasa'.toPNG,
                  'ic-mtd-expense'.toPNG,
                  'ic-mtd-nota'.toPNG,
                  'ic-cabang'.toPNG,
                ],
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
