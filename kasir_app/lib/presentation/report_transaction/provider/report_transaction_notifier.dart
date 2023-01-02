import 'package:flutter/material.dart';

class ReportTransactionNotifier extends ChangeNotifier {
  ScrollController scrollController = ScrollController();
  int selectedTransaction = 0;

  void onChangeTransaction(int value) {
    selectedTransaction = value;
    notifyListeners();
  }

  List<PopupMenuItem<int>> popUpMenuItems = [
    const PopupMenuItem(
      value: 0,
      child: Text('Semua Transaksi'),
    ),
    const PopupMenuItem(
      value: 1,
      child: Text('Gadai'),
    ),
    const PopupMenuItem(
      value: 2,
      child: Text('Tebus'),
    ),
    const PopupMenuItem(
      value: 3,
      child: Text('Perpanjangan'),
    ),
    const PopupMenuItem(
      value: 4,
      child: Text('Lelang'),
    ),
    const PopupMenuItem(
      value: 5,
      child: Text('Titip'),
    ),
    const PopupMenuItem(
      value: 6,
      child: Text('Petty Cash'),
    ),
  ];

  String get selectedTransactionText {
    switch (selectedTransaction) {
      case 0:
        return 'Semua Transaksi';
      case 1:
        return 'Gadai';
      case 2:
        return 'Tebus';
      case 3:
        return 'Perpanjangan';
      case 4:
        return 'Lelang';
      case 5:
        return 'Titip';
      case 6:
        return 'Petty Cash';
      default:
        return 'Semua Transaksi';
    }
  }
}
