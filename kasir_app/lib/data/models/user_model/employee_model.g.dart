// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeModel _$$_EmployeeModelFromJson(Map<String, dynamic> json) =>
    _$_EmployeeModel(
      position: json['position'] == null
          ? null
          : PositionModel.fromJson(json['position'] as Map<String, dynamic>),
      trainingNip: json['training_nip'] as String?,
      nip: json['nip'],
      phoneNumber: json['phone_number'],
      address: json['address'] as String?,
      birthPlace: json['birth_place'] as String?,
      birthDate: json['birth_date'] as String?,
      entryDate: json['entry_date'] as String?,
      joinDate: json['join_date'] as String?,
      status: json['status'] as String?,
      basicSalary: json['basic_salary'] as int?,
      allowance: json['allowance'] as int?,
      bankName: json['bank_name'] as String?,
      bankAccountNumber: json['bank_account_number'] as String?,
      bankAccountName: json['bank_account_name'] as String?,
    );

Map<String, dynamic> _$$_EmployeeModelToJson(_$_EmployeeModel instance) =>
    <String, dynamic>{
      'position': instance.position,
      'training_nip': instance.trainingNip,
      'nip': instance.nip,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'birth_place': instance.birthPlace,
      'birth_date': instance.birthDate,
      'entry_date': instance.entryDate,
      'join_date': instance.joinDate,
      'status': instance.status,
      'basic_salary': instance.basicSalary,
      'allowance': instance.allowance,
      'bank_name': instance.bankName,
      'bank_account_number': instance.bankAccountNumber,
      'bank_account_name': instance.bankAccountName,
    };
