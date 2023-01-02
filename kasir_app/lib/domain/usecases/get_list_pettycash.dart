import 'package:dartz/dartz.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/domain/entities/petty_cash.dart';
import 'package:kasir_app/domain/repositories/transaction_repository.dart';

class GetListPettyCash {
  final TransactionRepository _transactionRepository;
  GetListPettyCash(this._transactionRepository);
  Future<Either<Failure, List<PettyCash>>> execute() async {
    return await _transactionRepository.fetchListPettyCash();
  }
}
