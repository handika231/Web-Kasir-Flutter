import 'package:dartz/dartz.dart';
import 'package:kasir_app/domain/entities/petty_cash.dart';

import '../../data/failure.dart';

abstract class TransactionRepository {
  Future<Either<Failure, List<PettyCash>>> fetchListPettyCash();
}
