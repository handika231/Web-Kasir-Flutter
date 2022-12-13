import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as client;
import 'package:provider/provider.dart';

import '../../../common/constant.dart';
import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../../../data/exception.dart';
import '../provider/login_notifier.dart';
import 'item_textfield_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);
  Future login(String username, String password, String branchID) async {
    final response = await client.post(
      Uri.parse('${Urls.baseUrl}/api/auth/login'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        'username': username,
        'password': password,
        'branch_id': branchID,
      }),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data']['token'];
      return data;
    } else {
      throw const LoginException(message: 'Gagal login');
    }
  }

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
                            if (value.listBranch.isEmpty) {
                              return const SizedBox();
                            } else {
                              return DropdownButtonFormField<String>(
                                items: value.listBranch
                                    .map(
                                      (result) => DropdownMenuItem<String>(
                                        value: result.id.toString(),
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
                                  value.branchId = val ?? '1';
                                },
                                value: value.listBranch.first.id.toString(),
                                hint: const Text('Pilih Cabang'),
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
                              validator: (value) => value!.isEmpty
                                  ? 'Password tidak boleh kosong'
                                  : null,
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
                    child: Consumer<LoginNotifier>(
                      builder: (context, value, child) => GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          print('TEST');
                        },
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppStyle.btnColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            minimumSize: const Size(double.infinity, 60),
                          ),
                          onPressed: () async {
                            await value.login(
                              context,
                            );
                          },
                          child: const Text(
                            "Sign In",
                          ),
                        ),
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
