import 'package:flutter/material.dart';
import 'package:kasir_app/common/style.dart';

class ItemTextFieldWidget extends StatelessWidget {
  final bool isPassword;
  final String hintText;
  final String text;
  const ItemTextFieldWidget(
      {Key? key,
      this.isPassword = false,
      required this.hintText,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              text,
              style: const TextStyle(
                color: AppStyle.white,
              ),
            ),
          ),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppStyle.white,
              hintText: 'Masukkan $hintText',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
