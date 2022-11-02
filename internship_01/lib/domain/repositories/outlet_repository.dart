import 'package:dartz/dartz.dart';

import '../../common/failure.dart';
import '../entities/outlet.dart';

abstract class OutletRepository {
  Future<Either<Failure, List<Outlet>>> getDataOutlet();
}
