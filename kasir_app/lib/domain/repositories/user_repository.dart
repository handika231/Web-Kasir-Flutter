import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser();
  //update profile
  Future<Either<Failure, User>> updateProfile({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String position,
    required String image,
  });
}
