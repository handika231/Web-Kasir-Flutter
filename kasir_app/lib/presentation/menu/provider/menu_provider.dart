import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';
import 'package:side_navigation/side_navigation.dart';

class MenuNotifier extends ChangeNotifier {
  int currentIndex = 0;
  List<Widget> views = [
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Transaksi',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Dashboard',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Dashboard',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Dashboard',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Dashboard',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Keluar',
    ),
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
