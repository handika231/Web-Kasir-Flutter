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
      body: Expanded(
        child: Container(
          color: Colors.orange,
        ),
      ),
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
    ),
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
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
    ),
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
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
    ),
    MenuScaffold(
      body: Container(
        color: Colors.orange,
      ),
      title: 'Dashboard',
      subtitle: 'Detail ringkasan informasi mengenai cabang',
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
