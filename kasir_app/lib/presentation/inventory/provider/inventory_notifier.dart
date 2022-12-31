import 'package:flutter/material.dart';

import '../../../domain/entities/inventory.dart';
import '../../../domain/usecases/get_due_inventory.dart';
import '../../../domain/usecases/get_list_sale.dart';

class InventoryNotifier extends ChangeNotifier {
  final GetDueInventory _getDueInventory;
  final GetListSaleInventory _getListSale;
  InventoryNotifier(this._getDueInventory, this._getListSale);

  bool isHasData = false;
  List<Inventory> inventory = [];
  List<Inventory> saleInventory = [];
  Future<List<Inventory>> fetchInventory() async {
    final result = await _getDueInventory.execute();
    return result.fold((failure) {
      inventory = [];
      return inventory;
    }, (data) {
      isHasData = true;
      notifyListeners();
      inventory = data;
      return inventory;
    });
  }

  Future<List<Inventory>> fetchSaleInventory() async {
    final result = await _getListSale.execute();
    return result.fold((failure) {
      saleInventory = [];
      return saleInventory;
    }, (data) {
      isHasData = true;
      notifyListeners();
      saleInventory = data;
      return saleInventory;
    });
  }
}
