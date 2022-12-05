import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/transaction/provider/transaction_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../../menu/widgets/menu_scaffold.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionNotifier>(context);
    return DefaultTabController(
      length: 6,
      child: MenuScaffold(
        title: 'Transaksi',
        body: Expanded(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.only(
                  top: 24,
                  left: 24,
                  right: 24,
                ),
                decoration: BoxDecoration(
                  color: AppStyle.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        tabs: const [
                          Tab(text: 'Gadai'),
                          Tab(text: 'Tebus'),
                          Tab(text: 'Perpanjang'),
                          Tab(text: 'Lelang'),
                          Tab(text: 'Titip'),
                          Tab(text: 'Petty Cash'),
                        ],
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppStyle.redColor,
                        ),
                        labelColor: Colors.white,
                        labelStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: AppStyle.bold,
                        ),
                        unselectedLabelColor: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                  ],
                ),
              ),
              ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 24,
                    ),
                    decoration: BoxDecoration(
                      color: AppStyle.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TabBarView(
                      children: provider.views,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
