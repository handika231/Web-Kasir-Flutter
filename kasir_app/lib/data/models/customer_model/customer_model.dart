import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kasir_app/domain/entities/customer.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel extends Equatable {
  final int? id;
  final String? cif;
  final String? nik;
  final String? name;
  final String? email;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final String? work;
  final String? address;
  @JsonKey(name: 'mother_name')
  final String? motherName;
  final String? status;
  @JsonKey(name: 'blacklist_reason')
  final String? blacklistReason;
  @JsonKey(name: 'first_pawn_date')
  final String? firstPawnDate;
  @JsonKey(name: 'saving_balance')
  final int? savingBalance;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  const CustomerModel({
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

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  CustomerModel copyWith({
    int? id,
    String? cif,
    String? nik,
    String? name,
    String? email,
    String? phoneNumber,
    String? work,
    String? address,
    String? motherName,
    String? status,
    String? blacklistReason,
    String? firstPawnDate,
    int? savingBalance,
    String? profilePicture,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CustomerModel(
      id: id ?? this.id,
      cif: cif ?? this.cif,
      nik: nik ?? this.nik,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      work: work ?? this.work,
      address: address ?? this.address,
      motherName: motherName ?? this.motherName,
      status: status ?? this.status,
      blacklistReason: blacklistReason ?? this.blacklistReason,
      firstPawnDate: firstPawnDate ?? this.firstPawnDate,
      savingBalance: savingBalance ?? this.savingBalance,
      profilePicture: profilePicture ?? this.profilePicture,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Customer toEntity() {
    return Customer(
      id: id,
      cif: cif,
      nik: nik,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      work: work,
      address: address,
      motherName: motherName,
      status: status,
      blacklistReason: blacklistReason,
      firstPawnDate: firstPawnDate,
      savingBalance: savingBalance,
      profilePicture: profilePicture,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
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
}
