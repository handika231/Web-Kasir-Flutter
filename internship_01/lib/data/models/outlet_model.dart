// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/outlet.dart';

class OutletModel extends Equatable {
  final int id;
  final String name;
  const OutletModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory OutletModel.fromMap(Map<String, dynamic> map) {
    return OutletModel(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OutletModel.fromJson(String source) =>
      OutletModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Outlet toEntity() {
    return Outlet(
      id: id,
      name: name,
    );
  }

  @override
  List<Object> get props => [id, name];
}
