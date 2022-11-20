import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
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

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  State<LogOutPage> createState() => _LogOutPageState();
}

class _LogOutPageState extends State<LogOutPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MenuNotifier>(context, listen: false).changeIndex(0);
      context.replace('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
