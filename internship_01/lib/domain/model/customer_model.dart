import 'package:equatable/equatable.dart';

class CustomerModel extends Equatable {
  String id;
  String name;
  String nik;
  String address;
  String phone;
  String job;
  String email;

  CustomerModel({
    required this.id,
    required this.name,
    required this.nik,
    required this.address,
    required this.phone,
    required this.job,
    required this.email,
  });

  @override
  List<Object?> get props => [id, name, nik, address, phone, job, email];
}

List<CustomerModel> dataCustomer = [
  CustomerModel(
    id: '2208000012',
    name: 'Ardianto',
    nik: '3402142008940002',
    address: 'Jl.Wonosari Km 13, Kabregan RT 01',
    phone: '0895401278260',
    job: 'Karyawan Swasta',
    email: 'Ardianto@gmail.com',
  ),
  CustomerModel(
    id: '2208000013',
    name: 'Budi',
    nik: '3402142008940032',
    address: 'Jl. Parangtritis km 5, Salakan',
    phone: '0895401274565',
    job: 'Karyawan Swasta',
    email: 'Budi@gmail.com',
  ),
  CustomerModel(
    id: '2208000014',
    name: 'Dani',
    nik: '3402142008940546',
    address: 'Tegaltirto, Berbah, Sleman',
    phone: '0856546546516',
    job: 'Karyawan Swasta',
    email: 'Dani@gmail.com',
  ),
];
