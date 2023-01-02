import 'package:equatable/equatable.dart';

class PettyCash extends Equatable {
  final int? id;
  final String? date;
  final String? title;
  final int? amount;
  final String? account;
  final String? accountCode;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  //constructor
  const PettyCash({
    this.id,
    this.date,
    this.title,
    this.amount,
    this.account,
    this.accountCode,
    this.createdAt,
    this.updatedAt,
  });
  @override
  List<Object?> get props =>
      [id, date, title, amount, account, accountCode, createdAt, updatedAt];
}
