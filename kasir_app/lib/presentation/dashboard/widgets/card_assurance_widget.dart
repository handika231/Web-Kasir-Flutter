import 'package:flutter/material.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import 'item_total_widget.dart';

class CardAssuranceWidget extends StatelessWidget {
  const CardAssuranceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppStyle.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffFF7777),
                    Color(0xffDD0808),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 14,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jumlah Barang Jaminan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: AppStyle.bold,
                            color: AppStyle.white,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '100',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: AppStyle.bold,
                                    color: AppStyle.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Total Barang',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppStyle.white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 175,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Rp 100.000.000',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: AppStyle.bold,
                                    color: AppStyle.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Total Nominal',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppStyle.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
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
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 22,
                left: 16,
                right: 16,
                bottom: 30,
              ),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ItemTotalWidget(
                      title: 'Aktif',
                      value: '30',
                      price: '30.000.000',
                      indicatorText: '30',
                      indicatorColor: AppStyle.greenColor,
                    ),
                    VerticalDivider(
                      thickness: 3,
                    ),
                    ItemTotalWidget(
                      title: 'Jatuh Tempo',
                      value: '30',
                      price: '30.000.000',
                      indicatorText: '30',
                      indicatorColor: AppStyle.redColor,
                    ),
                    VerticalDivider(
                      thickness: 3,
                    ),
                    ItemTotalWidget(
                      title: 'Expired',
                      value: '40',
                      price: '40.000.000',
                      indicatorText: '40',
                      indicatorColor: AppStyle.btnColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
