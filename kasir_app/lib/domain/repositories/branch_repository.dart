import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/branch.dart';

abstract class BranchRepository {
  Future<Either<Failure, List<Branch>>> getListBranch();
  Future<Either<Failure, Branch>> getBranchById(int id);
}
