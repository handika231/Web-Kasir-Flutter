import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/branch.dart';

import '../repositories/branch_repository.dart';

class GetListBranch {
  final BranchRepository repository;
  GetListBranch(this.repository);

  Future<Either<Failure, List<Branch>>> execute() async {
    return await repository.getListBranch();
  }
}
