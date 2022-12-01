import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends Equatable {
  final UserModel? user;
  final String? token;

  const LoginModel({this.user, this.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  LoginModel copyWith({
    UserModel? user,
    String? token,
  }) {
    return LoginModel(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [user, token];
}
