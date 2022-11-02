import 'package:equatable/equatable.dart';

class Outlet extends Equatable {
  final int id;
  final String nama_outlet;
  const Outlet({
    required this.id,
    required this.nama_outlet,
  });

  @override
  List<Object> get props => [id, nama_outlet];
}
