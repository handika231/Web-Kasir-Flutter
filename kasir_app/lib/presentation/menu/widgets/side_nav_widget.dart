import 'package:flutter/material.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../provider/menu_provider.dart';

class SideNavWidget extends StatelessWidget {
  const SideNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MenuNotifier>(context, listen: true);
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      width: provider.isExpand ? 280 : 175,
      duration: const Duration(milliseconds: 700),
      color: AppStyle.blackColor,
      padding: const EdgeInsets.all(18),
      child: NavigationRail(
        groupAlignment: -0.5,
        useIndicator: !provider.isExpand,
        indicatorColor: AppStyle.redColor,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'logo'.toPNG,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: Visibility(
                visible: provider.isExpand,
                child: const Text(
                  'GMJ\nTamanan',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppStyle.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        backgroundColor: AppStyle.blackColor,
        selectedIndex: provider.currentIndex,
        unselectedLabelTextStyle: TextStyle(
          fontSize: 14,
          color: AppStyle.textSecondaryColor.withOpacity(0.5),
        ),
        selectedLabelTextStyle: const TextStyle(
          color: AppStyle.white,
          fontSize: 14,
          fontWeight: AppStyle.bold,
        ),
        onDestinationSelected: (index) {
          provider.changeIndex(index);
        },
        destinations: provider.listOfSideNav,
        extended: provider.isExpand,
      ),
    );
  }
}
