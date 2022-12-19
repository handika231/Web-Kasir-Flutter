import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';

import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUser {
  final UserRepository _userRepository;

  GetUser(this._userRepository);
  Future<Either<Failure, User>> execute() async {
    return await _userRepository.getUser();
  }
}
