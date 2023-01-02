import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:kasir_app/presentation/report_transaction/provider/pettycash_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';

class PettyCashWidget extends StatefulWidget {
  const PettyCashWidget({super.key});

  @override
  State<PettyCashWidget> createState() => _PettyCashWidgetState();
}

class _PettyCashWidgetState extends State<PettyCashWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<PettyCashNotifier>(context, listen: false)
          .fetchListPettyCash(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PettyCashNotifier>(context, listen: false);
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
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
          child: Consumer<PettyCashNotifier>(
            builder: (context, value, child) => value.isHasData
                ? value.listPettyCash.isNotEmpty
                    ? DataTable(
                        dataRowHeight: 60,
                        columnSpacing: 60,
                        headingTextStyle: const TextStyle(
                          fontSize: 15,
                          color: AppStyle.textSecondaryColor,
                        ),
                        dataTextStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: AppStyle.semiBold,
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
                            label: Text('ID'),
                          ),
                          DataColumn(
                            label: Text('Nama Pengeluaran'),
                          ),
                          DataColumn(
                            label: Text('Nama Akun'),
                          ),
                          DataColumn(
                            label: Text('Nomor Akun'),
                          ),
                          DataColumn(
                            label: Text('Nominal Pengeluaran'),
                          ),
                        ],
                        rows: value.listPettyCash
                            .map(
                              (data) => DataRow(
                                cells: [
                                  DataCell(
                                    Text(
                                      data.id.toString(),
                                      style: const TextStyle(
                                        color: AppStyle.greenColor,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(data.title.toString()),
                                  ),
                                  DataCell(
                                    Text(data.account.toString()),
                                  ),
                                  DataCell(
                                    Text(
                                      data.accountCode.toString(),
                                      style: const TextStyle(
                                        fontWeight: AppStyle.regular,
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    Text(data.amount.toString()),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      )
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('empty'.toPNG, width: 200, height: 200),
                            const Text('Tidak ada data'),
                          ],
                        ),
                      )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ),
      ),
    );
  }
}
