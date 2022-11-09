import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/side_nav_widget.dart';
import 'package:provider/provider.dart';

import '../provider/menu_provider.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Row(
          children: [
            const SideNavWidget(),
            Consumer<MenuNotifier>(
              builder: (context, value, child) => Expanded(
                child: value.views.elementAt(value.currentIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
