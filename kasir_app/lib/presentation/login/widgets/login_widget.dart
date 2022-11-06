import 'package:flutter/material.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:kasir_app/common/style.dart';

import 'item_textfield_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: AppStyle.black,
        child: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'logo'.toPNG,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 8),
                        child: Text(
                          'Cabang',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppStyle.white,
                          ),
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(
                            value: 'Cabang 1',
                            child: Text('Cabang 1'),
                          ),
                          DropdownMenuItem(
                            value: 'Cabang 2',
                            child: Text('Cabang 2'),
                          ),
                          DropdownMenuItem(
                            value: 'Cabang 3',
                            child: Text('Cabang 3'),
                          ),
                        ],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: AppStyle.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        onChanged: (val) {},
                        value: 'Cabang 1',
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
                      backgroundColor: AppStyle.btnColor,
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
