import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/inventory.dart';
import '../repositories/inventory_repository.dart';

class GetDueInventory {
  final InventoryRepository _inventoryRepository;
  GetDueInventory(this._inventoryRepository);
  Future<Either<Failure, List<Inventory>>> execute() async {
    return await _inventoryRepository.getDueInventory();
  }
}
