import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/cash_opname/widgets/custom_textfield_cash_opname.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

import '../../../common/style.dart';
import '../widgets/custom_count_cash_opname.dart';
import '../widgets/title_cash_opname_widget.dart';

class CashOpnameView extends StatelessWidget {
  const CashOpnameView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Cash Opname ',
      body: Expanded(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            IntrinsicHeight(
              child: Row(
                children: const [
                  CustomCountCashOpname(
                    title: 'Total',
                    linearColor: [
                      Color(0xff00CE7B),
                      Color(0xff03B06A),
                    ],
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  CustomCountCashOpname(
                    title: 'Dalam Dompet',
                    linearColor: [
                      Color(0xff7D6BEC),
                      Color(0xff2A1A8F),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppStyle.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TitleCashOpnameWidget(
                    title: 'Koin',
                    linearColor: [
                      Color(0xffFFC903),
                      Color(0xffFF8A00),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 34,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Flexible(child: CustomTextFieldCashOpname()),
                            SizedBox(
                              width: 100,
                            ),
                            Flexible(child: CustomTextFieldCashOpname()),
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          children: const [
                            Flexible(child: CustomTextFieldCashOpname()),
                            SizedBox(
                              width: 100,
                            ),
                            Flexible(child: CustomTextFieldCashOpname()),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: AppStyle.bold,
                                color: AppStyle.textSecondaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Text(
                              'Rp. 0',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: AppStyle.bold,
                                color: AppStyle.black,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: AppStyle.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DataTable(
                    columns: const [
                      DataColumn(label: Text('')),
                    ],
                    rows: const [],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: AppStyle.btnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "PROSES",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: AppStyle.semiBold,
                        color: AppStyle.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
