import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/customer.dart';

abstract class CustomerRepository {
  Future<Either<Failure, List<Customer>>> getListCustomer();
}
