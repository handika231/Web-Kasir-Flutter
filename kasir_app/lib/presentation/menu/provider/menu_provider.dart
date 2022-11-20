import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:side_navigation/side_navigation.dart';

import '../../cash_opname/view/cash_opname_view.dart';
import '../../customer_data/view/customer_data_view.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../inventory/view/inventory_view.dart';
import '../../profile/view/profile_view.dart';
import '../../report_transaction/view/report_transaction_view.dart';
import '../../transaction/view/transaction_view.dart';

class MenuNotifier extends ChangeNotifier {
  int currentIndex = 0;

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

  List<SideNavigationBarItem> listOfSideNav = [
    const SideNavigationBarItem(
      icon: Icons.dashboard,
      label: 'Dashboard',
    ),
    const SideNavigationBarItem(
      icon: Icons.attach_money,
      label: 'Transaksi',
    ),
    const SideNavigationBarItem(
      icon: Icons.receipt,
      label: 'Laporan Transaksi',
    ),
    const SideNavigationBarItem(
      icon: Icons.dataset,
      label: 'Data Barang Gadai',
    ),
    const SideNavigationBarItem(
      icon: Icons.person,
      label: 'Data Nasabah',
    ),
    const SideNavigationBarItem(
      icon: Icons.monetization_on_rounded,
      label: 'Cash Opname',
    ),
    const SideNavigationBarItem(
      icon: Icons.logout,
      label: 'Keluar',
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

class LogOutPage extends StatelessWidget {
  const LogOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() => GoRouter.of(context).replace('/'));
    return const Scaffold();
  }
}
