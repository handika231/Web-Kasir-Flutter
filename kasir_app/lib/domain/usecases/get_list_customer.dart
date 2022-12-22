import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/customer.dart';

import '../repositories/customer_repository.dart';

class GetListCustomer {
  final CustomerRepository _customerRepository;

  GetListCustomer(this._customerRepository);

  Future<Either<Failure, List<Customer>>> execute() async {
    return await _customerRepository.getListCustomer();
  }
}
