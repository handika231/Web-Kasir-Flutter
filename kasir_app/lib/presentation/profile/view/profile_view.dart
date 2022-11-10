import 'package:flutter/material.dart';
import 'package:kasir_app/common/style.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Profile',
      body: Container(
        margin: const EdgeInsets.all(27),
        padding: const EdgeInsets.only(
          top: 24,
          left: 28,
          bottom: 60,
        ),
        decoration: BoxDecoration(
          color: AppStyle.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profile',
              style: TextStyle(
                fontSize: 22,
                fontWeight: AppStyle.bold,
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      TextField(
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
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Jabatan',
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
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: AppStyle.semiBold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                TextField(
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
                                TextField(
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
                                TextField(
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
                      SizedBox(
                        width: 200,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Elevated Button",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Container(
                    height: 400,
                    color: Colors.amber,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
