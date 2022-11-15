import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../provider/menu_provider.dart';
import 'header_menu_widget.dart';

class MenuScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final String? subtitle;
  MenuScaffold(
      {super.key, required this.body, required this.title, this.subtitle});
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Provider.of<MenuNotifier>(context, listen: false);
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppStyle.bgColorDashboard,
      ),
      child: Column(
        children: [
          HeaderMenuWidget(title: title, subtitle: subtitle),
          const SizedBox(
            height: 8,
          ),
          // TODO: HARDCODE
          Consumer<MenuNotifier>(
            builder: (context, value, child) {
              return value.currentIndex == 0 || value.currentIndex == 1
                  ? Padding(
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
                              stream: Stream.periodic(
                                const Duration(seconds: 1),
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Text('- - : - - : - -');
                                } else {
                                  return Text(
                                    DateFormat('HH : mm : ss').format(
                                      DateTime.now(),
                                    ),
                                  );
                                }
                              },
                            ),
                            Text(
                              AppLocalizations.of(context)!.todayDate(
                                now,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox();
            },
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
