import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kasir_app/domain/entities/user.dart';

part 'employee_model.g.dart';

@JsonSerializable()
class EmployeeModel extends Equatable {
  final String? position;
  @JsonKey(name: 'training_nip')
  final String? trainingNip;
  // final int? nip; TODO NIP KOSONG DLU
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final String? address;
  @JsonKey(name: 'birth_place')
  final String? birthPlace;
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @JsonKey(name: 'entry_date')
  final String? entryDate;
  @JsonKey(name: 'join_date')
  final String? joinDate;
  final String? status;
  @JsonKey(name: 'basic_salary')
  final int? basicSalary;
  final int? allowance;
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @JsonKey(name: 'bank_account_number')
  final String? bankAccountNumber;
  @JsonKey(name: 'bank_account_name')
  final String? bankAccountName;

  const EmployeeModel({
    this.position,
    this.trainingNip,
    // this.nip, // TODO NIP KOSONG DLU
    this.phoneNumber,
    this.address,
    this.birthPlace,
    this.birthDate,
    this.entryDate,
    this.joinDate,
    this.status,
    this.basicSalary,
    this.allowance,
    this.bankName,
    this.bankAccountNumber,
    this.bankAccountName,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return _$EmployeeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);

  EmployeeModel copyWith({
    String? position,
    String? trainingNip,
    dynamic nip,
    dynamic phoneNumber,
    String? address,
    String? birthPlace,
    String? birthDate,
    String? entryDate,
    String? joinDate,
    String? status,
    int? basicSalary,
    int? allowance,
    String? bankName,
    String? bankAccountNumber,
    String? bankAccountName,
  }) {
    return EmployeeModel(
      position: position ?? this.position,
      trainingNip: trainingNip ?? this.trainingNip,
      // nip: nip ?? this.nip,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      birthPlace: birthPlace ?? this.birthPlace,
      birthDate: birthDate ?? this.birthDate,
      entryDate: entryDate ?? this.entryDate,
      joinDate: joinDate ?? this.joinDate,
      status: status ?? this.status,
      basicSalary: basicSalary ?? this.basicSalary,
      allowance: allowance ?? this.allowance,
      bankName: bankName ?? this.bankName,
      bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
      bankAccountName: bankAccountName ?? this.bankAccountName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      position,
      trainingNip,
      // nip,
      phoneNumber,
      address,
      birthPlace,
      birthDate,
      entryDate,
      joinDate,
      status,
      basicSalary,
      allowance,
      bankName,
      bankAccountNumber,
      bankAccountName,
    ];
  }

  Employee toEntity() {
    return Employee(
      position: position,
      trainingNip: trainingNip,
      // nip: nip,
      phoneNumber: phoneNumber,
      address: address,
      birthPlace: birthPlace,
      birthDate: birthDate,
      entryDate: entryDate,
      joinDate: joinDate,
      status: status,
      basicSalary: basicSalary,
      allowance: allowance,
      bankName: bankName,
      bankAccountNumber: bankAccountNumber,
      bankAccountName: bankAccountName,
    );
  }
}
