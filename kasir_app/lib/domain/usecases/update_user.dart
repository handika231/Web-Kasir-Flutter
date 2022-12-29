import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/user.dart';
import 'package:kasir_app/domain/repositories/user_repository.dart';

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
