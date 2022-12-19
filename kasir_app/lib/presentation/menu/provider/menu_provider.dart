import 'package:flutter/material.dart';
import 'package:kasir_app/domain/usecases/get_user.dart';

import '../../../common/extension.dart';
import '../../cash_opname/view/cash_opname_view.dart';
import '../../customer_data/view/customer_data_view.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../inventory/view/inventory_view.dart';
import '../../profile/view/profile_view.dart';
import '../../report_transaction/view/report_transaction_view.dart';
import '../../transaction/view/transaction_view.dart';

class MenuNotifier extends ChangeNotifier {
  final GetUser _getUser;
  MenuNotifier(this._getUser);
  String headerName = 'no name';
  bool isHasData = false;

  Future<void> getUser() async {
    final result = await _getUser.execute();
    result.fold((failure) {
      headerName = 'no name';
      notifyListeners();
    }, (data) {
      headerName = data.name ?? 'no name';
      isHasData = true;
      notifyListeners();
    });
  }

  int currentIndex = 0;

  bool isExpand = true;

  void toggleCollapsed() {
    isExpand = !isExpand;
    notifyListeners();
  }

  List<Widget> views = [
    const DashboardView(),
    const TransactionView(),
    const ReportTransactionView(),
    const InventoryView(),
    const CustomerDataView(),
    const CashOpnameView(),
    const ProfileView(),
  ];

  List<NavigationRailDestination> listOfSideNav = [
    NavigationRailDestination(
      icon: Image.asset(
        'ic-dashboard'.toPNG,
        width: 18,
        fit: BoxFit.cover,
      ),
      label: const Text('Dashboard'),
    ),
    NavigationRailDestination(
      icon: Image.asset(
        'ic-transaksi'.toPNG,
        width: 18,
        fit: BoxFit.cover,
      ),
      label: const Text('Transaksi'),
    ),
    NavigationRailDestination(
      icon: Image.asset(
        'ic-laporan-transaksi'.toPNG,
        width: 18,
        fit: BoxFit.cover,
      ),
      label: const Text('Laporan\nTransaksi'),
    ),
    NavigationRailDestination(
      icon: Image.asset(
        'ic-data-barang-gadai'.toPNG,
        width: 18,
        fit: BoxFit.cover,
      ),
      label: const Text('Data Barang\nGadai'),
    ),
    NavigationRailDestination(
      icon: Image.asset(
        'ic-data-nasabah'.toPNG,
        width: 18,
        fit: BoxFit.cover,
      ),
      label: const Text('Data\nPelanggan'),
    ),
    NavigationRailDestination(
      icon: Image.asset(
        'ic-cash-opname'.toPNG,
        width: 18,
        fit: BoxFit.cover,
      ),
      label: const Text('Cash\nOpname'),
    ),
    const NavigationRailDestination(
      icon: Icon(
        Icons.person,
        color: Colors.white,
      ),
      label: Text('Profil'),
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
