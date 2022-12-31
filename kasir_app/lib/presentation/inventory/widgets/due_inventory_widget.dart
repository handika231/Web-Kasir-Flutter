import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../../../domain/entities/inventory.dart';
import '../provider/inventory_notifier.dart';

class DueInventoryWidget extends StatefulWidget {
  const DueInventoryWidget({super.key});

  @override
  State<DueInventoryWidget> createState() => _DueInventoryWidgetState();
}

class _DueInventoryWidgetState extends State<DueInventoryWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<InventoryNotifier>(context, listen: false)
          .fetchInventory(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<InventoryNotifier>(context, listen: false);
    return Consumer<InventoryNotifier>(
      builder: (context, value, child) {
        return value.isHasData
            ? ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: value.inventory.isNotEmpty
                    ? SingleChildScrollView(
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
                          rows: value.inventory.map(
                            (customer) {
                              return _buildRow(context, customer);
                            },
                          ).toList(),
                        ),
                      )
                    : const Center(
                        child: Text('Data Kosong'),
                      ),
              )
            : const Center(child: CircularProgressIndicator());
      },
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
            style: const TextStyle(color: Colors.yellow),
          ),
        ),
      ],
    );
  }
}
