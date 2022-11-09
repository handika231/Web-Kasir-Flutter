import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kasir_app/common/style.dart';

import 'header_menu_widget.dart';

class MenuScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final String? subtitle;
  MenuScaffold(
      {super.key, required this.body, required this.title, this.subtitle});

  final DateTime now = DateTime.now();
  final bool _running = true;
  Stream<String> _clock() async* {
    // This loop will run forever because _running is always true
    while (_running) {
      await Future<void>.delayed(const Duration(seconds: 1));
      DateTime now = DateTime.now();
      // This will be displayed on the screen as current time
      yield "${now.hour}:${now.minute}:${now.second}";
    }
  }

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
                  StreamBuilder(
                    stream: _clock(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      }
                      return Text(
                        snapshot.data.toString(),
                      );
                    },
                  ),
                  Text(
                    AppLocalizations.of(context)!.todayDate(now),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          body,
        ],
      ),
    );
  }
}
