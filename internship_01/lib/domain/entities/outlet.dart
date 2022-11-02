import 'package:equatable/equatable.dart';

class Outlet extends Equatable {
  final int id;
  final String name;
  const Outlet({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
