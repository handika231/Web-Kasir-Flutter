import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/branch.dart';

part 'branch_model.g.dart';

@JsonSerializable()
class BranchModel extends Equatable {
  final int? id;
  final String? code;
  final String? name;
  final String? email;
  final String? address;
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;

  const BranchModel({
    this.id,
    this.code,
    this.name,
    this.email,
    this.address,
    this.deletedAt,
  });

  factory BranchModel.fromJson(Map<String, dynamic> json) {
    return _$BranchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchModelToJson(this);

  BranchModel copyWith({
    int? id,
    String? code,
    String? name,
    String? email,
    String? address,
    dynamic deletedAt,
  }) {
    return BranchModel(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      email: email ?? this.email,
      address: address ?? this.address,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Branch toEntity() {
    return Branch(
      id: id,
      code: code,
      name: name,
      email: email,
      address: address,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, code, name, email, address, deletedAt];
}
