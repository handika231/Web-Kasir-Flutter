import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../../login/provider/login_notifier.dart';
import '../provider/menu_notifier.dart';

class SideNavWidget extends StatelessWidget {
  const SideNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MenuNotifier>(context, listen: false);
    Provider.of<LoginNotifier>(context, listen: false)
        .fetchBranchById(context.read<LoginNotifier>().branchId);

    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      width: context.watch<MenuNotifier>().isExpand ? 280 : 175,
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
                visible: context.watch<MenuNotifier>().isExpand,
                child: Consumer<LoginNotifier>(
                  builder: (context, value, child) => value.isHasData
                      ? Text(
                          value.branch.name.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            color: AppStyle.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox(),
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
