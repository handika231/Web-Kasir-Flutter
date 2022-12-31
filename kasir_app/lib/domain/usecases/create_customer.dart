import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/data/models/customer_model/customer_model.dart';
import 'package:kasir_app/domain/entities/customer.dart';
import 'package:kasir_app/domain/repositories/customer_repository.dart';

class CreateCustomer {
  final CustomerRepository repository;
  CreateCustomer(this.repository);
  Future<Either<Failure, Customer>> execute(CustomerModel customer) async {
    return await repository.createCustomer(customer);
  }
}
