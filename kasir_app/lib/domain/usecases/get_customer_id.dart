import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/customer.dart';
import '../repositories/customer_repository.dart';

class GetCustomerById {
  final CustomerRepository _customerRepository;
  GetCustomerById(this._customerRepository);
  Future<Either<Failure, Customer>> execute(int id) async {
    return await _customerRepository.getCustomerById(id);
  }
}
