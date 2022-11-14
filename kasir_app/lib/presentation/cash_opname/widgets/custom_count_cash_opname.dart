import 'package:flutter/material.dart';

import '../../../common/style.dart';
import 'custom_textfield_cash_opname.dart';

class CustomCountCashOpname extends StatelessWidget {
  final String title;
  final List<Color> linearColor;
  const CustomCountCashOpname({
    Key? key,
    required this.title,
    required this.linearColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20,
        fontWeight: AppStyle.bold,
        color: AppStyle.textSecondaryColor,
      ),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: AppStyle.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: linearColor),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 34,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: AppStyle.bold,
                      color: AppStyle.white,
                    ),
                  ),
                ),
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
                    const CustomTextFieldCashOpname(),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomTextFieldCashOpname(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        bottom: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Total'),
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            'Rp 0',
                            style: TextStyle(
                              color: AppStyle.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
