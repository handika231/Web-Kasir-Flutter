import 'package:dartz/dartz.dart';

import '../../common/failure.dart';
import '../entities/outlet.dart';
import '../repositories/outlet_repository.dart';

class GetDataOutlet {
  final OutletRepository repository;

  GetDataOutlet(this.repository);

  Future<Either<Failure, List<Outlet>>> execute() async {
    return await repository.getDataOutlet();
  }
}
