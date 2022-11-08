import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:kasir_app/common/style.dart';
import 'package:side_navigation/side_navigation.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: AppStyle.blackColor,
            padding: const EdgeInsets.all(18),
            child: SideNavigationBar(
              toggler: const SideBarToggler(
                shrinkIcon: Icons.menu,
                expandIcon: Icons.menu,
              ),
              theme: SideNavigationBarTheme(
                itemTheme: SideNavigationBarItemTheme(
                  selectedItemColor: AppStyle.white,
                ),
                togglerTheme: const SideNavigationBarTogglerTheme(
                  expandIconColor: Colors.white,
                  shrinkIconColor: Colors.white,
                ),
                dividerTheme: const SideNavigationBarDividerTheme(
                  showHeaderDivider: false,
                  showMainDivider: false,
                  showFooterDivider: false,
                ),
                backgroundColor: AppStyle.blackColor,
              ),
              header: SideNavigationBarHeader(
                image: Column(
                  children: [
                    Image.asset(
                      'logo'.toPNG,
                      width: 55,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: AppStyle.bold,
                        color: AppStyle.white,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                title: const Text(
                  'GMJ\nTamanan',
                  style: TextStyle(
                    fontWeight: AppStyle.bold,
                    fontSize: 24,
                    color: AppStyle.white,
                  ),
                ),
                subtitle: const SizedBox(),
              ),
              selectedIndex: currentIndex,
              items: const [
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
                  icon: FontAwesomeIcons.user,
                  label: 'Data Nasabah',
                ),
                SideNavigationBarItem(
                  icon: FontAwesomeIcons.cashRegister,
                  label: 'Cash Opname',
                ),
                SideNavigationBarItem(
                  icon: Icons.logout,
                  label: 'Keluar',
                ),
              ],
              onTap: (index) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
            ),
          ),
          Expanded(
            child: views.elementAt(currentIndex),
          ),
        ],
      ),
    );
  }
}
