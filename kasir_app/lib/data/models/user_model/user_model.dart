import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasir_app/domain/entities/user.dart';

import 'employee_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();
  factory UserModel({
    int? id,
    String? name,
    String? username,
    String? email,
    String? role,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    EmployeeModel? employee,
  }) = _UserModel;

  User toEntity() {
    return User(
      id: id ?? 0,
      name: name ?? '',
      username: username ?? '',
      email: email ?? '',
      role: role ?? '',
      profilePicture: profilePicture ?? '',
      employee: employee?.toEntity(),
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
