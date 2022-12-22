// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      id: json['id'] as int?,
      cif: json['cif'] as String?,
      nik: json['nik'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      work: json['work'] as String?,
      address: json['address'] as String?,
      motherName: json['mother_name'] as String?,
      status: json['status'] as String?,
      blacklistReason: json['blacklist_reason'] as String?,
      firstPawnDate: json['first_pawn_date'] as String?,
      savingBalance: json['saving_balance'] as int?,
      profilePicture: json['profile_picture'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cif': instance.cif,
      'nik': instance.nik,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'work': instance.work,
      'address': instance.address,
      'mother_name': instance.motherName,
      'status': instance.status,
      'blacklist_reason': instance.blacklistReason,
      'first_pawn_date': instance.firstPawnDate,
      'saving_balance': instance.savingBalance,
      'profile_picture': instance.profilePicture,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
