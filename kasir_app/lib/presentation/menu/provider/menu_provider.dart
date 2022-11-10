import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/cash_opname/view/cash_opname_view.dart';
import 'package:kasir_app/presentation/customer_data/view/customer_data_view.dart';
import 'package:kasir_app/presentation/dashboard/view/dashboard_view.dart';
import 'package:kasir_app/presentation/inventory/view/inventory_view.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';
import 'package:kasir_app/presentation/profile/view/profile_view.dart';
import 'package:kasir_app/presentation/report_transaction/view/report_transaction_view.dart';
import 'package:kasir_app/presentation/transaction/view/transaction_view.dart';
import 'package:side_navigation/side_navigation.dart';

class MenuNotifier extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> views = [
    const DashboardView(),
    const TransactionView(),
    const ReportTransactionView(),
    const InventoryView(),
    const CustomerDataView(),
    const CashOpnameView(),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Keluar',
    ),
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
