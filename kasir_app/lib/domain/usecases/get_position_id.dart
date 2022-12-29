import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/position.dart';
import '../repositories/position_repository.dart';

class GetPositionById {
  final PositionRepository repository;

  GetPositionById(this.repository);

  Future<Either<Failure, Position>> execute(int id) async {
    return await repository.getPositionById(id);
  }
}
