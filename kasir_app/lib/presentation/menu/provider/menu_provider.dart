import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

class MenuNotifier extends ChangeNotifier {
  int currentIndex = 0;
  List<Widget> views = const [
    Center(
      child: Text('Dashboard'),
    ),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
    Center(
      child: Text('Dashboard'),
    ),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];

  List<SideNavigationBarItem> listOfSideNav = const [
    SideNavigationBarItem(
      icon: Icons.dashboard,
      label: 'Dashboard',
    ),
    SideNavigationBarItem(
      icon: Icons.attach_money,
      label: 'Transaksi',
    ),
    SideNavigationBarItem(
      icon: Icons.receipt,
      label: 'Laporan Transaksi',
    ),
    SideNavigationBarItem(
      icon: Icons.dataset,
      label: 'Data Barang Gadai',
    ),
    SideNavigationBarItem(
      icon: Icons.person,
      label: 'Data Nasabah',
    ),
    SideNavigationBarItem(
      icon: Icons.monetization_on_rounded,
      label: 'Cash Opname',
    ),
    SideNavigationBarItem(
      icon: Icons.logout,
      label: 'Keluar',
    ),
  ];

  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
