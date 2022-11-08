import 'package:flutter/material.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:provider/provider.dart';
import 'package:side_navigation/side_navigation.dart';

import '../../../common/style.dart';
import '../provider/menu_provider.dart';

class SideNavWidget extends StatelessWidget {
  const SideNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MenuNotifier>(context, listen: true);
    return Container(
      color: AppStyle.blackColor,
      padding: const EdgeInsets.all(18),
      child: SideNavigationBar(
        toggler: const SideBarToggler(
          shrinkIcon: Icons.menu,
          expandIcon: Icons.menu,
        ),
        theme: SideNavigationBarTheme(
          itemTheme: SideNavigationBarItemTheme(
            selectedItemColor: AppStyle.white,
          ),
          togglerTheme: const SideNavigationBarTogglerTheme(
            expandIconColor: Colors.white,
            shrinkIconColor: Colors.white,
          ),
          dividerTheme: const SideNavigationBarDividerTheme(
            showHeaderDivider: false,
            showMainDivider: false,
            showFooterDivider: false,
          ),
          backgroundColor: AppStyle.blackColor,
        ),
        header: SideNavigationBarHeader(
          image: Column(
            children: [
              Image.asset(
                'logo'.toPNG,
                width: 55,
              ),
              const SizedBox(height: 24),
              const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: AppStyle.bold,
                  color: AppStyle.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
          title: const Text(
            'GMJ\nTamanan',
            style: TextStyle(
              fontWeight: AppStyle.bold,
              fontSize: 24,
              color: AppStyle.white,
            ),
          ),
          subtitle: const SizedBox(),
        ),
        selectedIndex: provider.currentIndex,
        items: provider.listOfSideNav,
        onTap: provider.changeIndex,
      ),
    );
  }
}
