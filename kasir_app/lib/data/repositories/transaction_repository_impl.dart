import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/petty_cash.dart';
import 'package:kasir_app/domain/repositories/transaction_repository.dart';

import '../exception.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final RemoteDataSource _remoteDataSource;
  const TransactionRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, List<PettyCash>>> fetchListPettyCash() async {
    try {
      final data = await _remoteDataSource.getListPettyCash();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(
        ServerFailure(message: 'Gagal mengambil data list petty cash'),
      );
    }
  }
}
