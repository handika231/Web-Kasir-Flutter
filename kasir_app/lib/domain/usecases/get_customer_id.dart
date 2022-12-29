import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/customer.dart';
import 'package:kasir_app/domain/repositories/customer_repository.dart';

class GetCustomerById {
  final CustomerRepository _customerRepository;
  GetCustomerById(this._customerRepository);
  Future<Either<Failure, Customer>> execute(int id) async {
    return await _customerRepository.getCustomerById(id);
  }
}
