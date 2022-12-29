import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/branch.dart';
import '../repositories/branch_repository.dart';

class GetListBranch {
  final BranchRepository repository;
  GetListBranch(this.repository);

  Future<Either<Failure, List<Branch>>> execute() async {
    return await repository.getListBranch();
  }
}
