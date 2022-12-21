import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/position.dart';

abstract class PositionRepository {
  Future<Either<Failure, List<Position>>> getListPosition();
  Future<Either<Failure, Position>> getPositionById(int id);
}
