import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/customer_data/edit_customer/view/edit_customer_view.dart';
import 'package:side_navigation/side_navigation.dart';

import '../../cash_opname/view/cash_opname_view.dart';
import '../../customer_data/view/customer_data_view.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../inventory/view/inventory_view.dart';
import '../../profile/view/profile_view.dart';
import '../../report_transaction/view/report_transaction_view.dart';
import '../../transaction/view/transaction_view.dart';
import '../widgets/menu_scaffold.dart';

class MenuNotifier extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> views = [
    const DashboardView(),
    const TransactionView(),
    const ReportTransactionView(),
    const InventoryView(),
    const CustomerDataView(),
    const CashOpnameView(),
    MenuScaffold(body: const SizedBox(), title: 'LogOut'),
    // TODO: ADD HARDCODE
    const ProfileView(),
    const EditCustomerView(),
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
