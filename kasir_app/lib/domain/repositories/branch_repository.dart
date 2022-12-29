import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/branch.dart';

abstract class BranchRepository {
  Future<Either<Failure, List<Branch>>> getListBranch();
  Future<Either<Failure, Branch>> getBranchById(int id);
}
