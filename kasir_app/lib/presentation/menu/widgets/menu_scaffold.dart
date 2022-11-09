import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:kasir_app/common/style.dart';

import 'header_menu_widget.dart';

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
          HeaderMenuWidget(title: title, subtitle: subtitle),
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
