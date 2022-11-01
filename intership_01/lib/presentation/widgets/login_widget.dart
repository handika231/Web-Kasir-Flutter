import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';

import '../../common/style.dart';
import 'item_text_field_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: blackColor,
        child: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'logo'.path,
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 8),
                        child: Text(
                          'Cabang',
                          style: TextStyle(
                            fontSize: 16,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(
                            value: 'Semarang',
                            child: Text('Semarang'),
                          ),
                          DropdownMenuItem(
                            value: 'Yogyakarta',
                            child: Text('Yogyakarta'),
                          ),
                          DropdownMenuItem(
                            value: 'Pilih Cabang',
                            child: Text('Pilih Cabang'),
                          ),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: whiteColor,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        onChanged: (val) {},
                        value: 'Pilih Cabang',
                        hint: const Text('Pilih Cabang'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ItemTextFieldWidget(
                  hintText: 'Username',
                  text: 'Username',
                ),
                const SizedBox(
                  height: 20,
                ),
                const ItemTextFieldWidget(
                  hintText: 'Password',
                  text: 'Password',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orangeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
