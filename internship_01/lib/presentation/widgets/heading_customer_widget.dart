import 'package:flutter/material.dart';

import '../../common/style.dart';

class HeadingCustomerWidget extends StatelessWidget {
  const HeadingCustomerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Data Nasabah',
          style: TextStyle(
            fontSize: 22,
            fontWeight: bold,
          ),
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'Telusuri',
              suffixIcon: const Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }
}
