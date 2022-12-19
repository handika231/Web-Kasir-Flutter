// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      profilePicture: json['profile_picture'] as String?,
      employee: json['employee'] == null
          ? null
          : EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'role': instance.role,
      'profile_picture': instance.profilePicture,
      'employee': instance.employee,
    };
