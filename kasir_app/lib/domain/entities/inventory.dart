import 'package:equatable/equatable.dart';

class Inventory extends Equatable {
  final int? id;
  final String? nomorNota;
  final DateTime? date;
  final String? dueDate;
  final String? extensionState;
  final String? goodName;
  final int? pawnValue;
  final String? completeness;
  final String? minus;
  final String? status;

  //constructor
  const Inventory({
    required this.id,
    required this.nomorNota,
    required this.date,
    required this.dueDate,
    required this.extensionState,
    required this.goodName,
    required this.pawnValue,
    required this.completeness,
    required this.minus,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        nomorNota,
        date,
        dueDate,
        extensionState,
        goodName,
        pawnValue,
        completeness,
        minus,
        status,
      ];
}
