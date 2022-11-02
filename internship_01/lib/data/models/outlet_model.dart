// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/outlet.dart';

class OutletModel extends Equatable {
  final int id;
  final String nama_outlet;
  const OutletModel({
    required this.id,
    required this.nama_outlet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama_outlet': nama_outlet,
    };
  }

  factory OutletModel.fromMap(Map<String, dynamic> map) {
    return OutletModel(
      id: map['id'] as int,
      nama_outlet: map['nama_outlet'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OutletModel.fromJson(String source) =>
      OutletModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Outlet toEntity() {
    return Outlet(
      id: id,
      nama_outlet: nama_outlet,
    );
  }

  @override
  List<Object> get props => [id, nama_outlet];
}
