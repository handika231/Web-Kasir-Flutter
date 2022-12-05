import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app/common/style.dart';
import 'package:kasir_app/domain/entities/inventory.dart';

import '../../menu/widgets/menu_scaffold.dart';

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
                    child: TabBarView(
                      children: [
                        ScrollConfiguration(
                          behavior: const ScrollBehavior().copyWith(
                            dragDevices: {
                              PointerDeviceKind.touch,
                              PointerDeviceKind.mouse,
                            },
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              dataRowHeight: 80,
                              columnSpacing: 80,
                              headingTextStyle: const TextStyle(
                                fontSize: 15,
                                color: AppStyle.textSecondaryColor,
                              ),
                              dataTextStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: AppStyle.bold,
                                color: AppStyle.blackColor,
                              ),
                              border: const TableBorder(
                                horizontalInside: BorderSide(
                                  color: AppStyle.bgColorDashboard,
                                  width: 1,
                                ),
                              ),
                              columns: const [
                                DataColumn(
                                  label: Text('Nomor nota'),
                                ),
                                DataColumn(
                                  label: Text('Tanggal'),
                                ),
                                DataColumn(
                                  label: Text('Status Perpanjangan'),
                                ),
                                DataColumn(
                                  label: Text('Nama Barang'),
                                ),
                                DataColumn(
                                  label: Text('Nominal Gadai'),
                                ),
                                DataColumn(
                                  label: Text('Kelengkapan'),
                                ),
                                DataColumn(
                                  label: Text('Minus'),
                                ),
                                DataColumn(
                                  label: Text('Status'),
                                ),
                              ],
                              rows: dataListInventory
                                  .map(
                                    (customer) => _buildRow(context, customer),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          child: Center(
                            child: Text('Jatuh Tempo'),
                          ),
                        ),
                        const SizedBox(
                          child: Center(
                            child: Text('Lelang'),
                          ),
                        ),
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

  DataRow _buildRow(BuildContext context, Inventory customer) {
    return DataRow(
      cells: [
        DataCell(
          Text(
            'UAD-${customer.nomorNota}',
            style: const TextStyle(
              color: AppStyle.greenColor,
            ),
          ),
        ),
        DataCell(
          Text(customer.date),
        ),
        DataCell(
          Text(
            customer.statusPerpanjangan,
            style: const TextStyle(
              fontWeight: AppStyle.regular,
            ),
          ),
        ),
        DataCell(
          Text(
            customer.nameItem,
            style: const TextStyle(
              fontWeight: AppStyle.regular,
            ),
          ),
        ),
        DataCell(
          Text(customer.nominalGadai),
        ),
        DataCell(
          Text(customer.kelengkapan),
        ),
        DataCell(
          Text(customer.minus),
        ),
        DataCell(
          Text(
            customer.status,
            style: const TextStyle(color: AppStyle.greenColor),
          ),
        ),
      ],
    );
  }
}
