import 'package:flutter/material.dart';
import 'package:kasir_app/common/extension.dart';
import 'package:kasir_app/common/result_transaction.dart';

class ReportTransactionNotifier extends ChangeNotifier {
  ScrollController scrollController = ScrollController();
  ResultTransaction resultTransaction = ResultTransaction.semua;
  String name = 'Semua Transaksi';
  void onSelected(ResultTransaction value) {
    resultTransaction = value;
    name = value.name.toCapitalized();
    notifyListeners();
  }

  List<PopupMenuItem<ResultTransaction>> popUpMenuItems = [
    const PopupMenuItem(
      value: ResultTransaction.semua,
      child: Text('Semua Transaksi'),
    ),
    const PopupMenuItem(
      value: ResultTransaction.gadai,
      child: Text('Gadai'),
    ),
    const PopupMenuItem(
      value: ResultTransaction.tebus,
      child: Text('Tebus'),
    ),
    const PopupMenuItem(
      value: ResultTransaction.perpanjangan,
      child: Text('Perpanjangan'),
    ),
    const PopupMenuItem(
      value: ResultTransaction.lelang,
      child: Text('Lelang'),
    ),
    const PopupMenuItem(
      value: ResultTransaction.titip,
      child: Text('Titip'),
    ),
    const PopupMenuItem(
      value: ResultTransaction.petty,
      child: Text('Petty Cash'),
    ),
  ];
}
