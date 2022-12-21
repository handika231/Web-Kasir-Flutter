import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasir_app/presentation/menu/provider/menu_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../provider/profile_notifier.dart';

class FormProfileWidget extends StatefulWidget {
  const FormProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FormProfileWidget> createState() => _FormProfileWidgetState();
}

class _FormProfileWidgetState extends State<FormProfileWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ProfileNotifier>(context, listen: false).fetchListPosition();
      Provider.of<MenuNotifier>(context, listen: false).fetchUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileNotifier>(context, listen: false);
    final menuProvider = Provider.of<MenuNotifier>(context, listen: false);
    provider.nameController.text = menuProvider.user.name.toString();
    provider.emailController.text = menuProvider.user.email.toString();
    provider.phoneController.text =
        menuProvider.user.employee!.phoneNumber.toString();
    provider.positionController.text =
        menuProvider.user.employee!.position!.toString();

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nama',
            style: TextStyle(
              fontSize: 16,
              fontWeight: AppStyle.semiBold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            controller: provider.nameController,
            decoration: InputDecoration(
              hintText: 'Nama',
              hintStyle: const TextStyle(
                color: AppStyle.textSecondaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Jabatan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Consumer<MenuNotifier>(
                      builder: (context, menu, child) =>
                          Consumer<ProfileNotifier>(
                        builder: (context, profile, child) {
                          return profile.isHasData
                              ? TextField(
                                  readOnly: true,
                                  enabled: false,
                                  controller: profile.positionController,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: AppStyle.textSecondaryColor,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: provider.emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: provider.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nomor Telepon',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: provider.phoneController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '08xxxxxxxxxx',
                        hintStyle: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Flexible(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 55),
                backgroundColor: AppStyle.btnColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                provider.updateUserProfile(context);
              },
              child: const Text(
                "Simpan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: AppStyle.semiBold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
