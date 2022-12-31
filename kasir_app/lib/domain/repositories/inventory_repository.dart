import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/inventory.dart';

abstract class InventoryRepository {
  Future<Either<Failure, List<Inventory>>> getDueInventory();
  Future<Either<Failure, List<Inventory>>> getSaleInventory();
}
