import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kasir_app/domain/entities/user.dart';

import 'employee_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? role;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  final EmployeeModel? employee;

  const UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.role,
    this.profilePicture,
    this.employee,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    String? role,
    String? profilePicture,
    EmployeeModel? employee,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      role: role ?? this.role,
      profilePicture: profilePicture ?? this.profilePicture,
      employee: employee ?? this.employee,
    );
  }

  User toEntity() {
    return User(
      id: id,
      name: name,
      username: username,
      email: email,
      role: role,
      profilePicture: profilePicture,
      employee: employee?.toEntity(),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      username,
      email,
      role,
      profilePicture,
      employee,
    ];
  }
}
