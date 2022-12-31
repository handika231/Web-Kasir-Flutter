import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/models/customer_model/customer_model.dart';

import '../../data/failure.dart';
import '../entities/customer.dart';

abstract class CustomerRepository {
  Future<Either<Failure, List<Customer>>> getListCustomer();
  Future<Either<Failure, Customer>> getCustomerById(int id);
  Future<Either<Failure, Customer>> createCustomer(CustomerModel customer);
}
