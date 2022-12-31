import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/inventory.dart';
import '../repositories/inventory_repository.dart';

class GetListSaleInventory {
  InventoryRepository repository;
  GetListSaleInventory(this.repository);
  Future<Either<Failure, List<Inventory>>> execute() async {
    return await repository.getSaleInventory();
  }
}
