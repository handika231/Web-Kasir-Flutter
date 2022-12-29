import 'package:equatable/equatable.dart';
import 'package:kasir_app/domain/entities/position.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? role;
  final String? profilePicture;
  final Employee? employee;

  //constructor
  const User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.role,
    this.profilePicture,
    this.employee,
  });

  @override
  List<Object?> get props =>
      [id, name, username, email, role, profilePicture, employee];
}

//create class Employee
class Employee extends Equatable {
  final Position? position;
  final String? trainingNip;
  final dynamic nip;
  final String? phoneNumber;
  final String? address;
  final String? birthPlace;
  final String? birthDate;
  final String? entryDate;
  final String? joinDate;
  final String? status;
  final int? basicSalary;
  final int? allowance;
  final String? bankName;
  final String? bankAccountNumber;
  final String? bankAccountName;

  //constructor
  const Employee({
    this.position,
    this.trainingNip,
    this.nip,
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
  @override
  List<Object?> get props => [
        position,
        trainingNip,
        nip,
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
        bankAccountName
      ];
}
