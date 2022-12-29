import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser();
  //update profile
  Future<Either<Failure, User>> updateProfile({
    required String name,
    required String email,
    required String phone,
    required int position,
  });
}
