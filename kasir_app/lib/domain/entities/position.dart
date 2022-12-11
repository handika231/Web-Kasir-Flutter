import 'package:equatable/equatable.dart';

class Position extends Equatable {
  final int id;
  final String name;
  //constructor
  const Position({
    required this.id,
    required this.name,
  });
  @override
  List<Object?> get props => [id, name];
}
