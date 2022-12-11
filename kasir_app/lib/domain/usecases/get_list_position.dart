import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/position.dart';
import '../repositories/position_repository.dart';

class GetListPosition {
  final PositionRepository repository;
  GetListPosition(this.repository);
  Future<Either<Failure, List<Position>>> execute() async {
    return await repository.getListPosition();
  }
}
