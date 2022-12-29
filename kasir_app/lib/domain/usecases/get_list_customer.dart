import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/customer.dart';
import '../repositories/customer_repository.dart';

class GetListCustomer {
  final CustomerRepository _customerRepository;

  GetListCustomer(this._customerRepository);

  Future<Either<Failure, List<Customer>>> execute() async {
    return await _customerRepository.getListCustomer();
  }
}
