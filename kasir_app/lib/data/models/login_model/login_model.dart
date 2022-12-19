import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  factory LoginModel({
    UserModel? user,
    String? token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
