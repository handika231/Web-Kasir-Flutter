import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/branch.dart';
import 'package:kasir_app/domain/repositories/branch_repository.dart';

import '../exception.dart';

class BranchRepositoryImpl implements BranchRepository {
  final RemoteDataSource remoteDataSource;
  BranchRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Branch>>> getListBranch() async {
    try {
      final data = await remoteDataSource.getListBranch();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(message: 'Gagal mengambil data cabang'));
    }
  }

  @override
  Future<Either<Failure, Branch>> getBranchById(int id) async {
    try {
      final data = await remoteDataSource.getBranchById(id);
      return Right(data.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: 'Gagal mengambil data cabang'));
    }
  }
}
