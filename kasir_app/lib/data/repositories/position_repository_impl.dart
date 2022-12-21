import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/exception.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/position.dart';
import 'package:kasir_app/domain/repositories/position_repository.dart';

class PositionRepositoryImpl implements PositionRepository {
  RemoteDataSource remoteDataSource;
  PositionRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Position>>> getListPosition() async {
    try {
      final data = await remoteDataSource.getListPosition();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(
        ServerFailure(message: 'Gagal mengambil data list jabatan'),
      );
    }
  }

  @override
  Future<Either<Failure, Position>> getPositionById(int id) async {
    try {
      final data = await remoteDataSource.getPositionById(id);
      return Right(data.toEntity());
    } on ServerException {
      return const Left(
        ServerFailure(message: 'Gagal mengambil data jabatan'),
      );
    }
  }
}
