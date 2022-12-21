import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';

import '../entities/branch.dart';
import '../repositories/branch_repository.dart';

class GetBranchById {
  final BranchRepository repository;

  GetBranchById(this.repository);

  Future<Either<Failure, Branch>> execute(int id) async {
    return await repository.getBranchById(id);
  }
}
