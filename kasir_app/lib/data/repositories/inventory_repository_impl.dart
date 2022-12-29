import 'package:dartz/dartz.dart';

import '../../domain/entities/inventory.dart';
import '../../domain/repositories/inventory_repository.dart';
import '../datasources/remote_data_source.dart';
import '../exception.dart';
import '../failure.dart';

class InventoryRepositoryImpl implements InventoryRepository {
  RemoteDataSource remoteDataSource;
  InventoryRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Inventory>>> getDueInventory() async {
    try {
      final data = await remoteDataSource.getDueInventory();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(
        ServerFailure(message: 'Gagal mengambil data inventory'),
      );
    }
  }
}
