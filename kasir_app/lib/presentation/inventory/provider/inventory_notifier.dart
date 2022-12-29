import 'package:flutter/material.dart';

import '../../../domain/entities/inventory.dart';
import '../../../domain/usecases/get_due_inventory.dart';

class InventoryNotifier extends ChangeNotifier {
  final GetDueInventory _getDueInventory;
  InventoryNotifier(this._getDueInventory);

  bool isHasData = false;
  List<Inventory> inventory = [];
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
}
