import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class UpdateUser {
  final UserRepository _userRepository;
  //constructor
  UpdateUser(this._userRepository);

  Future<Either<Failure, User>> execute({
    required String name,
    required String email,
    required String phone,
    required int position,
  }) async {
    return await _userRepository.updateProfile(
      name: name,
      email: email,
      phone: phone,
      position: position,
    );
  }
}
