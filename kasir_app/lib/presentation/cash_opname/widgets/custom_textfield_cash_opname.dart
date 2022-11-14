import 'package:flutter/material.dart';

import '../../../common/style.dart';

class CustomTextFieldCashOpname extends StatelessWidget {
  const CustomTextFieldCashOpname({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Rp 100.000',
                hintStyle: const TextStyle(
                  color: AppStyle.textSecondaryColor,
                  fontWeight: AppStyle.bold,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            'x',
          ),
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            '=',
          ),
        ),
        const Text(
          'Rp 400.000',
          style: TextStyle(
            fontSize: 20,
            color: AppStyle.black,
            fontWeight: AppStyle.semiBold,
          ),
        ),
      ],
    );
  }
}
