import 'package:equatable/equatable.dart';

class Transaction extends Equatable {
  final String number;
  final String transaction;
  final String cashier;
  final String item;
  final String status;
  final int nominal;
  //create constructor
  const Transaction({
    required this.number,
    required this.transaction,
    required this.cashier,
    required this.item,
    required this.status,
    required this.nominal,
  });
  @override
  List<Object?> get props =>
      [number, transaction, cashier, item, status, nominal];
}

List<Transaction> dataTransaction = [
  const Transaction(
    number: 'UAD-1020',
    transaction: 'Gadai',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    status: 'P1',
    nominal: 100000,
  ),
  const Transaction(
    number: 'UAD-1020',
    transaction: 'Tebus',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    status: 'P1',
    nominal: 100000,
  ),
  const Transaction(
    number: 'UAD-1020',
    transaction: 'Perpanjangan',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    status: 'P1',
    nominal: 100000,
  ),
  const Transaction(
    number: 'UAD-1020',
    transaction: 'Gadai',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    status: 'P1',
    nominal: 100000,
  ),
  const Transaction(
    number: 'UAD-1020',
    transaction: 'Tebus',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    status: 'P1',
    nominal: 100000,
  ),
  const Transaction(
    number: 'UAD-1020',
    transaction: 'Perpanjangan',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    status: 'P1',
    nominal: 100000,
  ),
];
