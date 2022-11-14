import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/cash_opname/widgets/title_cash_opname_widget.dart';

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
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppStyle.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TitleCashOpnameWidget(
                title: title,
                linearColor: linearColor,
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
