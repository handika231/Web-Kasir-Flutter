import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../../../domain/entities/transaction.dart';
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
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(60, 50, 25, 20),
                    decoration: BoxDecoration(
                      color: AppStyle.blackColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Sept\n2022',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: AppStyle.bold,
                            color: AppStyle.white,
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        _buildItem(
                          icon: 'ic-diamond',
                          title: 'Total Barang Jaminan',
                          price: 'Rp 100.000.000',
                          desc: '100',
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        _buildItem(
                          icon: 'ic-mtd-jasa',
                          title: 'MTD Jasa',
                          price: 'Rp 100.000.000',
                          desc: '90%',
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        _buildItem(
                          icon: 'ic-mtd-expense',
                          title: 'MTD Expense',
                          desc: 'Rp 20.000.000',
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        _buildItem(
                          icon: 'ic-mtd-nota',
                          desc: 'Rp 10.000.000',
                          title: 'MTD Nota',
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'ic-wave'.toPNG,
                      width: 380,
                      height: 160,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 100),
                decoration: BoxDecoration(
                  color: AppStyle.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Transaksi Hari Ini',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: AppStyle.bold,
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 24,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    DataTable(
                      dataTextStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: AppStyle.semiBold,
                      ),
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Nomor Nota',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Jenis Transaksi',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Kasir',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Barang',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Status',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Nominal',
                          ),
                        ),
                      ],
                      rows: dataTransaction
                          .map(
                            (data) => DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    data.number,
                                    style: const TextStyle(
                                      color: AppStyle.greenColor,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    data.transaction,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    data.cashier,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    data.item,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    data.status,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '${data.nominal}'.convertMoney,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(
      {String title = '',
      String desc = '',
      String icon = '',
      String price = ''}) {
    return Flexible(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppStyle.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.only(
              left: 30,
              bottom: 20,
              top: 30,
              right: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: AppStyle.bold,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: AppStyle.bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: AppStyle.semiBold,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: -30,
            left: 30,
            child: Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppStyle.redColor,
              ),
              child: Image.asset(
                icon.toPNG,
                width: 21,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
