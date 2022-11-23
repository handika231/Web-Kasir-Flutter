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
      curve: Curves.fastLinearToSlowEaseIn,
      width: provider.isCollapsed ? 80 : 250,
      duration: const Duration(milliseconds: 500),
      color: AppStyle.blackColor,
      padding: const EdgeInsets.all(18),
      child: NavigationRail(
        leading: Image.asset(
          'logo'.toPNG,
          width: 200,
        ),
        backgroundColor: AppStyle.blackColor,
        selectedIndex: provider.currentIndex,
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home),
            label: Text('Home'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: Text('Favorites'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.bookmark_border),
            selectedIcon: Icon(Icons.book),
            label: Text('Books'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.star_border),
            selectedIcon: Icon(Icons.star),
            label: Text('Albums'),
          ),
        ],
      ),
    );
  }
}
