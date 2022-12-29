import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../position_model/position_model.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  EmployeeModel._();
  factory EmployeeModel({
    PositionModel? position,
    @JsonKey(name: 'training_nip') String? trainingNip,
    dynamic nip,
    @JsonKey(name: 'phone_number') dynamic phoneNumber,
    String? address,
    @JsonKey(name: 'birth_place') String? birthPlace,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'entry_date') String? entryDate,
    @JsonKey(name: 'join_date') String? joinDate,
    String? status,
    @JsonKey(name: 'basic_salary') int? basicSalary,
    int? allowance,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
    @JsonKey(name: 'bank_account_name') String? bankAccountName,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  Employee toEntity() {
    return Employee(
      position: position?.toEntity(),
      trainingNip: trainingNip ?? '',
      nip: nip ?? '',
      phoneNumber: phoneNumber ?? '',
      address: address ?? '',
      birthPlace: birthPlace ?? '',
      birthDate: birthDate ?? '',
      entryDate: entryDate ?? '',
      joinDate: joinDate ?? '',
      status: status ?? '',
      basicSalary: basicSalary ?? 0,
      allowance: allowance ?? 0,
      bankName: bankName ?? '',
      bankAccountNumber: bankAccountNumber ?? '',
      bankAccountName: bankAccountName ?? '',
    );
  }
}
