import 'package:equatable/equatable.dart';

class Branch extends Equatable {
  final int? id;
  final String? code;
  final String? name;
  final String? email;
  final String? address;
  //create constructor
  const Branch({
    this.id,
    this.code,
    this.name,
    this.email,
    this.address,
  });
  @override
  List<Object?> get props => [];
}
