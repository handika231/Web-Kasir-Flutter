import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../../../domain/entities/inventory.dart';
import '../provider/inventory_notifier.dart';

class SaleInventoryWidget extends StatefulWidget {
  const SaleInventoryWidget({super.key});

  @override
  State<SaleInventoryWidget> createState() => _SaleInventoryWidgetState();
}

class _SaleInventoryWidgetState extends State<SaleInventoryWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<InventoryNotifier>(context, listen: false)
          .fetchSaleInventory(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryNotifier>(
      builder: (context, value, child) => value.isHasData
          ? value.saleInventory.isNotEmpty
              ? ScrollConfiguration(
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
                        rows: value.saleInventory
                            .map(
                              (customer) => _buildRow(context, customer),
                            )
                            .toList()),
                  ),
                )
              : const Center(
                  child: Text('Tidak ada data'),
                )
          : const Center(
              child: CircularProgressIndicator(),
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
          Text(customer.dueDate ?? '-'),
        ),
        DataCell(
          Text(
            customer.extensionState ?? '-',
            style: const TextStyle(
              fontWeight: AppStyle.regular,
            ),
          ),
        ),
        DataCell(
          Text(
            customer.goodName ?? '-',
            style: const TextStyle(
              fontWeight: AppStyle.regular,
            ),
          ),
        ),
        DataCell(
          Text(customer.pawnValue.toString()),
        ),
        DataCell(
          Text(customer.completeness ?? '-'),
        ),
        DataCell(
          Text(customer.minus ?? '-'),
        ),
        DataCell(
          Text(
            customer.status ?? '-',
            style: const TextStyle(color: AppStyle.redColor),
          ),
        ),
      ],
    );
  }
}
