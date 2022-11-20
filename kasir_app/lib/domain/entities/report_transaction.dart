import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';

class ReportTransaction extends Equatable {
  final String number;
  final String status;
  final String cashier;
  final String item;
  final int imei;
  final int nominal;
  final VoidCallback onTap;

  //create constructor
  const ReportTransaction({
    required this.number,
    required this.status,
    required this.cashier,
    required this.item,
    required this.imei,
    required this.nominal,
    required this.onTap,
  });

  @override
  List<Object?> get props => [number, status, cashier, item, imei, nominal];
}

List<ReportTransaction> dataReportTransaction = [
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    onTap: () {},
    nominal: 100000,
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    nominal: 100000,
    onTap: () {},
  ),
  ReportTransaction(
    number: 'UAD-1020',
    status: 'P1',
    cashier: 'Ardianto',
    item: 'Iphone X putih',
    imei: 123456789,
    onTap: () {},
    nominal: 100000,
  ),
];
