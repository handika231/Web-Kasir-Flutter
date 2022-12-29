import 'package:dartz/dartz.dart';

import '../../domain/entities/customer.dart';
import '../../domain/repositories/customer_repository.dart';
import '../datasources/remote_data_source.dart';
import '../exception.dart';
import '../failure.dart';

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

  @override
  Future<Either<Failure, Customer>> getCustomerById(int id) async {
    try {
      final data = await remoteDataSource.getCustomerById(id);
      return Right(data.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: 'Gagal mengambil data nasabah'));
    }
  }
}