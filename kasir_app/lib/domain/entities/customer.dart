import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Customer extends Equatable {
  final String id;
  final String name;
  final String nik;
  final String address;
  final String phone;
  final String job;
  final String email;
  final bool status;
  final VoidCallback onTap;

  const Customer({
    required this.id,
    required this.name,
    required this.nik,
    required this.address,
    required this.phone,
    required this.job,
    required this.email,
    required this.status,
    required this.onTap,
  });

  @override
  List<Object?> get props => [id, name, nik, address, phone, job, email];
}

List<Customer> dataCustomer = [
  Customer(
    id: '2208000012',
    name: 'Ardianto',
    nik: '3402142008940002',
    address: 'Jl.Wonosari Km 13, Kabregan RT 01',
    phone: '0895401278260',
    job: 'Karyawan Swasta',
    email: 'Ardianto@gmail.com',
    status: true,
    onTap: () {},
  ),
  Customer(
    id: '2208000013',
    name: 'Budi',
    nik: '3402142008940032',
    address: 'Jl. Parangtritis km 5, Salakan',
    phone: '0895401274565',
    job: 'Karyawan Swasta',
    email: 'Budi@gmail.com',
    status: true,
    onTap: () {},
  ),
  Customer(
    id: '2208000014',
    name: 'Dani',
    nik: '3402142008940546',
    address: 'Tegaltirto, Berbah, Sleman',
    phone: '0856546546516',
    job: 'Karyawan Swasta',
    email: 'Dani@gmail.com',
    status: true,
    onTap: () {},
  ),
  Customer(
    id: '2208000015',
    name: 'Rani',
    nik: '3402142008945166',
    address: 'Senggotan, Kasihan, Bantul',
    phone: '0856546545641',
    job: 'Karyawan Swasta',
    status: false,
    onTap: () {},
    email: 'Rani@gmail.com',
  ),
  Customer(
    id: '2208000231',
    name: 'Dwi Nur',
    nik: '3402142008956465',
    address: 'Pakem gede Rt 2 ,pakem,Sleman',
    phone: '0856544845556',
    job: 'Karyawan Swasta',
    status: true,
    onTap: () {},
    email: 'Dwinur@gmail.com',
  ),
  Customer(
    id: '2208000012',
    name: 'Ardianto',
    nik: '3402142008940002',
    address: 'Jl.Wonosari Km 13, Kabregan RT 01',
    phone: '0895401278260',
    job: 'Karyawan Swasta',
    status: true,
    onTap: () {},
    email: 'Ardianto@gmail.com',
  ),
  Customer(
    id: '2208000013',
    name: 'Budi',
    nik: '3402142008940032',
    address: 'Jl. Parangtritis km 5, Salakan',
    phone: '0895401274565',
    job: 'Karyawan Swasta',
    status: true,
    onTap: () {},
    email: 'Budi@gmail.com',
  ),
  Customer(
    id: '2208000014',
    name: 'Dani',
    nik: '3402142008940546',
    address: 'Tegaltirto, Berbah, Sleman',
    phone: '0856546546516',
    job: 'Karyawan Swasta',
    status: true,
    onTap: () {},
    email: 'Dani@gmail.com',
  ),
  Customer(
    id: '2208000015',
    name: 'Rani',
    nik: '3402142008945166',
    address: 'Senggotan, Kasihan, Bantul',
    phone: '0856546545641',
    job: 'Karyawan Swasta',
    status: false,
    onTap: () {},
    email: 'Rani@gmail.com',
  ),
  Customer(
    id: '2208000231',
    name: 'Dwi Nur',
    nik: '3402142008956465',
    status: true,
    address: 'Pakem gede Rt 2 ,pakem,Sleman',
    phone: '0856544845556',
    job: 'Karyawan Swasta',
    onTap: () {},
    email: 'Dwinur@gmail.com',
  ),
  Customer(
    id: '2208000014',
    name: 'Dani',
    nik: '3402142008940546',
    address: 'Tegaltirto, Berbah, Sleman',
    phone: '0856546546516',
    job: 'Karyawan Swasta',
    status: true,
    onTap: () {},
    email: 'Dani@gmail.com',
  ),
  Customer(
    id: '2208000015',
    name: 'Rani',
    nik: '3402142008945166',
    address: 'Senggotan, Kasihan, Bantul',
    phone: '0856546545641',
    job: 'Karyawan Swasta',
    status: false,
    onTap: () {},
    email: 'Rani@gmail.com',
  ),
  Customer(
    id: '2208000231',
    name: 'Dwi Nur',
    nik: '3402142008956465',
    status: true,
    address: 'Pakem gede Rt 2 ,pakem,Sleman',
    phone: '0856544845556',
    job: 'Karyawan Swasta',
    onTap: () {},
    email: 'Dwinur@gmail.com',
  ),
];
