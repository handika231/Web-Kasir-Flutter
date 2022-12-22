import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final int? id;
  final String? cif;
  final String? nik;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? work;
  final String? address;
  final String? motherName;
  final String? status;
  final String? blacklistReason;
  final String? firstPawnDate;
  final int? savingBalance;
  final String? profilePicture;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  //constructor
  const Customer({
    this.id,
    this.cif,
    this.nik,
    this.name,
    this.email,
    this.phoneNumber,
    this.work,
    this.address,
    this.motherName,
    this.status,
    this.blacklistReason,
    this.firstPawnDate,
    this.savingBalance,
    this.profilePicture,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        cif,
        nik,
        name,
        email,
        phoneNumber,
        work,
        address,
        motherName,
        status,
        blacklistReason,
        firstPawnDate,
        savingBalance,
        profilePicture,
        createdAt,
        updatedAt,
      ];
}
