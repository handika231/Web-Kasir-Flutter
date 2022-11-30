import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../../../domain/entities/report_transaction.dart';
import '../../menu/widgets/menu_scaffold.dart';

class ReportTransactionView extends StatelessWidget {
  const ReportTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: Expanded(
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: AppStyle.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Report Transaction',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: AppStyle.bold,
                          ),
                        ),
                        const Spacer(flex: 2),
                        PopupMenuButton(
                          offset: const Offset(0, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          position: PopupMenuPosition.under,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppStyle.redColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  'Semua Transaksi',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: AppStyle.bold,
                                    color: AppStyle.white,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: AppStyle.white,
                                )
                              ],
                            ),
                          ),
                          itemBuilder: (context) {
                            return [
                              const PopupMenuItem(
                                child: Text('Semua Transaksi'),
                              ),
                              const PopupMenuItem(
                                child: Text('Gadai'),
                              ),
                              const PopupMenuItem(
                                child: Text('Tebus'),
                              ),
                              const PopupMenuItem(
                                child: Text('Perpanjangan'),
                              ),
                              const PopupMenuItem(
                                child: Text('Lelang'),
                              ),
                              const PopupMenuItem(
                                child: Text('Titip'),
                              ),
                              const PopupMenuItem(
                                child: Text('Petty Cash'),
                              ),
                            ];
                          },
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
                  Container(
                    margin: const EdgeInsets.only(
                      top: 12,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      color: AppStyle.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: DataTable(
                      headingTextStyle: const TextStyle(
                        color: AppStyle.textSecondaryColor,
                      ),
                      columns: const [
                        DataColumn(
                          label: Text('Nomor Nota'),
                        ),
                        DataColumn(
                          label: Text('Status'),
                        ),
                        DataColumn(
                          label: Text('Kasir'),
                        ),
                        DataColumn(
                          label: Text('Barang'),
                        ),
                        DataColumn(
                          label: Text('IMEI'),
                        ),
                        DataColumn(
                          label: Text('Nominal'),
                        ),
                        DataColumn(
                          label: Text(''),
                        ),
                      ],
                      rows: dataReportTransaction.map((data) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Text(data.number),
                            ),
                            DataCell(
                              Text(data.status),
                            ),
                            DataCell(
                              Text(data.cashier),
                            ),
                            DataCell(
                              Text(data.item),
                            ),
                            DataCell(
                              Text(data.imei.toString()),
                            ),
                            DataCell(
                              Text('${data.nominal}'.convertMoney),
                            ),
                            DataCell(
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppStyle.redColor,
                                ),
                                onPressed: data.onTap,
                                child: const Text(
                                  "Cancel",
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      title: 'Laporan Transaksi',
    );
  }
}
