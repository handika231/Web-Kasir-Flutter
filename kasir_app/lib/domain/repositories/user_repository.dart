import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser();
}
