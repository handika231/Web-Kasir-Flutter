import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:kasir_app/common/style.dart';

class MenuScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final String? subtitle;
  MenuScaffold(
      {super.key, required this.body, required this.title, this.subtitle});

  final String time = DateFormat('kk:mm:dd').format(DateTime.now());
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppStyle.bgColorDashboard,
      ),
      child: Column(
        children: [
          Container(
            color: AppStyle.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: AppStyle.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                      ),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                      color: AppStyle.textSecondaryColor,
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/img-fulana.png',
                          width: 56,
                        ),
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      const Text(
                        'Fulana',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      PopupMenuButton(
                        constraints: const BoxConstraints(
                          minWidth: 200,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppStyle.textSecondaryColor,
                        ),
                        offset: const Offset(0, 30),
                        position: PopupMenuPosition.under,
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem(
                              value: 'profile',
                              child: Text('Profile'),
                            ),
                            const PopupMenuItem(
                              value: 'keluar',
                              child: Text('Keluar'),
                            ),
                          ];
                        },
                        onSelected: (value) {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 22,
                fontWeight: AppStyle.bold,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    time,
                  ),
                  Text(
                    AppLocalizations.of(context)!.todayDate(now),
                  ),
                ],
              ),
            ),
          ),
          body,
        ],
      ),
    );
  }
}
