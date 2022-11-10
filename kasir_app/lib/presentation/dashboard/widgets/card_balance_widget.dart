import 'package:flutter/material.dart';
import 'package:kasir_app/common/extension.dart';

import '../../../common/style.dart';

class CardBalanceWidget extends StatelessWidget {
  const CardBalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
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
                    Color(0xffFFBD70),
                    Color(0xffFF8A00),
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
                      children: const [
                        Text(
                          'Saldo Akhir',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: AppStyle.bold,
                            color: AppStyle.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Rp 100.000.000',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: AppStyle.bold,
                            color: AppStyle.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/ic-wave.png',
                      width: 380,
                      height: 160,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
                top: 16,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'ic-pencairan'.toPNG,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Pencairan',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: AppStyle.regular,
                                      color: AppStyle.textSecondaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: AppStyle.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Rp 30.000.000',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: AppStyle.semiBold,
                                      color: AppStyle.textSecondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          thickness: 3,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'ic-pelunasan'.toPNG,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Pelunasan',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: AppStyle.regular,
                                      color: AppStyle.textSecondaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: AppStyle.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Rp 30.000.000',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: AppStyle.semiBold,
                                      color: AppStyle.textSecondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'ic-saldo'.toPNG,
                        width: 24,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Saldo Awal',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: AppStyle.regular,
                              color: AppStyle.textSecondaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Rp 100.000.000',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: AppStyle.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
