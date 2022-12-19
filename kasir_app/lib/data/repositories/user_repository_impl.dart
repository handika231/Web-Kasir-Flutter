import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/user.dart';
import 'package:kasir_app/domain/repositories/user_repository.dart';

import '../exception.dart';

class UserRepositoryImpl implements UserRepository {
  RemoteDataSource remoteDataSource;
  UserRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final data = await remoteDataSource.getUser();
      return Right(data.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: 'Gagal mengambil data user'));
    }
  }
}