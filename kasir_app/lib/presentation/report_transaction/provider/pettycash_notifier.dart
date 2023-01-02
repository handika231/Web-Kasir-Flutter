import 'package:flutter/material.dart';
import 'package:kasir_app/domain/entities/petty_cash.dart';
import 'package:kasir_app/domain/usecases/get_list_pettycash.dart';

class PettyCashNotifier extends ChangeNotifier {
  final GetListPettyCash _getListPettyCash;
  PettyCashNotifier(this._getListPettyCash);
  List<PettyCash> listPettyCash = [];
  bool isHasData = false;
  Future<List<PettyCash>> fetchListPettyCash() async {
    final result = await _getListPettyCash.execute();
    return result.fold((failure) {
      listPettyCash = [];
      return listPettyCash;
    }, (data) {
      isHasData = true;
      notifyListeners();
      listPettyCash = data;
      return listPettyCash;
    });
  }
}
