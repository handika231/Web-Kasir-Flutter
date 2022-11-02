import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../common/failure.dart';
import '../../common/server_exception.dart';
import '../../domain/entities/outlet.dart';
import '../../domain/repositories/outlet_repository.dart';
import '../datasources/remote_data_source.dart';

class OutletRepositoryImpl implements OutletRepository {
  final RemoteDataSource remoteDataSource;
  OutletRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Outlet>>> getDataOutlet() async {
    try {
      final data = await remoteDataSource.getDataOutlet();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the server'));
    }
  }
}
