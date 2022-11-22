import 'package:flutter/material.dart';

import '../../cash_opname/view/cash_opname_view.dart';
import '../../customer_data/view/customer_data_view.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../inventory/view/inventory_view.dart';
import '../../logout/logout_view.dart';
import '../../profile/view/profile_view.dart';
import '../../report_transaction/view/report_transaction_view.dart';
import '../../transaction/view/transaction_view.dart';

class MenuNotifier extends ChangeNotifier {
  int currentIndex = 0;
  bool isCollapsed = true;

  void toggleCollapsed() {
    isCollapsed = !isCollapsed;
    notifyListeners();
  }

  List<Widget> views = [
    const DashboardView(),
    const TransactionView(),
    const ReportTransactionView(),
    const InventoryView(),
    const CustomerDataView(),
    const CashOpnameView(),
    const LogOutPage(),
    const ProfileView(),
  ];

  List<NavigationRailDestination> listOfSideNav = [
    const NavigationRailDestination(
      icon: Icon(Icons.home),
      selectedIcon: Icon(Icons.home),
      label: Text('Dashboard'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.shopping_cart),
      selectedIcon: Icon(Icons.shopping_cart),
      label: Text('Transaksi'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.receipt),
      selectedIcon: Icon(Icons.receipt),
      label: Text('Laporan Transaksi'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.inventory),
      selectedIcon: Icon(Icons.inventory),
      label: Text('Inventory'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.person),
      selectedIcon: Icon(Icons.person),
      label: Text('Data Pelanggan'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.money),
      selectedIcon: Icon(Icons.money),
      label: Text('Cash Opname'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.logout),
      selectedIcon: Icon(Icons.logout),
      label: Text('Log Out'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.person),
      selectedIcon: Icon(Icons.person),
      label: Text('Profile'),
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
