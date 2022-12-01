import 'package:flutter/material.dart';
import 'package:kasir_app/common/result_state.dart';
import 'package:provider/provider.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../provider/login_notifier.dart';
import 'item_textfield_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginNotifier>(context, listen: false);
    return Expanded(
      flex: 3,
      child: Container(
        color: AppStyle.blackColor,
        child: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
            ),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: provider.formKey,
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
                        Consumer<LoginNotifier>(
                          builder: (context, value, child) {
                            if (value.state == ResultState.hasData) {
                              return DropdownButtonFormField<String>(
                                items: value.listBranch
                                    .map(
                                      (result) => DropdownMenuItem<String>(
                                        value: result.name,
                                        child: Text(
                                          result.name ?? "",
                                        ),
                                      ),
                                    )
                                    .toList(),
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: AppStyle.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                                onChanged: (val) {
                                  debugPrint(val.toString());
                                },
                                value: value.listBranch.first.name,
                                hint: const Text('Pilih Cabang'),
                              );
                            } else {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ItemTextFieldWidget(
                    controller: provider.usernameController,
                    hintText: 'Username',
                    text: 'Username',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16, bottom: 8),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: AppStyle.white,
                            ),
                          ),
                        ),
                        Consumer<LoginNotifier>(
                          builder: (context, value, child) {
                            return TextFormField(
                              controller: value.passwordController,
                              obscureText: value.isPassword,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    value.changePassword();
                                  },
                                  icon: Icon(
                                    provider.isPassword
                                        ? Icons.remove_red_eye
                                        : Icons.remove_red_eye_outlined,
                                    color: AppStyle.black,
                                  ),
                                ),
                                filled: true,
                                fillColor: AppStyle.white,
                                hintText: 'Masukkan Password',
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
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
      ),
    );
  }
}
