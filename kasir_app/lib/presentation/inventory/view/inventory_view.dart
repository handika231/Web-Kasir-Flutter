import 'package:flutter/material.dart';

import '../../../common/style.dart';
import '../../menu/widgets/menu_scaffold.dart';
import '../widgets/active_inventory_widget.dart';
import '../widgets/due_inventory_widget.dart';
import '../widgets/sale_inventory_widget.dart';

class InventoryView extends StatelessWidget {
  const InventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MenuScaffold(
        body: Expanded(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppStyle.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TabBar(
                        tabs: const [
                          Tab(text: 'Aktif'),
                          Tab(text: 'Jatuh Tempo'),
                          Tab(text: 'Lelang'),
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
                    Flexible(
                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: TextField(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030),
                            );
                          },
                          readOnly: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: const Icon(Icons.calendar_month),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Telusuri',
                          suffixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppStyle.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    height: 500,
                    child: const TabBarView(
                      children: [
                        ActiveInventoryWidget(),
                        DueInventoryWidget(),
                        SaleInventoryWidget(),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        title: 'Data Barang Gadai',
      ),
    );
  }
}
