import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/customer.dart';
import 'package:kasir_app/domain/repositories/customer_repository.dart';

import '../exception.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  final RemoteDataSource remoteDataSource;
  CustomerRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Customer>>> getListCustomer() async {
    try {
      final data = await remoteDataSource.getListCustomer();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(message: 'Gagal mengambil data nasabah'));
    }
  }
}
