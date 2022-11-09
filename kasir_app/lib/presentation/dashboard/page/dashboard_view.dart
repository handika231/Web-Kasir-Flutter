import 'package:flutter/material.dart';
import 'package:kasir_app/common/style.dart';

import '../../menu/widgets/menu_scaffold.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                  'assets/ic-wave.png',
                                  width: 380,
                                  height: 160,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 36,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
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
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
    );
  }
}
