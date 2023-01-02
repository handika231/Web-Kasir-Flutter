import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir_app/data/repositories/transaction_repository_impl.dart';
import 'package:kasir_app/domain/repositories/transaction_repository.dart';
import 'package:kasir_app/domain/usecases/create_customer.dart';
import 'package:kasir_app/domain/usecases/get_list_pettycash.dart';
import 'package:kasir_app/presentation/report_transaction/provider/pettycash_notifier.dart';
import 'package:kasir_app/presentation/transaction/provider/gadai_notifier.dart';

import 'common/utils/image_picker_helper.dart';
import 'data/auth/authentication.dart';
import 'data/datasources/remote_data_source.dart';
import 'data/repositories/branch_repository_impl.dart';
import 'data/repositories/customer_repository_impl.dart';
import 'data/repositories/inventory_repository_impl.dart';
import 'data/repositories/position_repository_impl.dart';
import 'data/repositories/user_repository_impl.dart';
import 'domain/repositories/branch_repository.dart';
import 'domain/repositories/customer_repository.dart';
import 'domain/repositories/inventory_repository.dart';
import 'domain/repositories/position_repository.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/get_branch_id.dart';
import 'domain/usecases/get_customer_id.dart';
import 'domain/usecases/get_due_inventory.dart';
import 'domain/usecases/get_list_branch.dart';
import 'domain/usecases/get_list_customer.dart';
import 'domain/usecases/get_list_position.dart';
import 'domain/usecases/get_list_sale.dart';
import 'domain/usecases/get_position_id.dart';
import 'domain/usecases/get_user.dart';
import 'domain/usecases/update_user.dart';
import 'presentation/customer_data/provider/table_customer_notifier.dart';
import 'presentation/inventory/provider/inventory_notifier.dart';
import 'presentation/login/provider/login_notifier.dart';
import 'presentation/menu/provider/menu_notifier.dart';
import 'presentation/profile/provider/profile_notifier.dart';

final locator = GetIt.instance;

init() {
// PACKAGE
  locator.registerLazySingleton(() => ImagePicker());
  locator.registerLazySingleton(() => Client());

// UTILS
  locator.registerLazySingleton(() => ImagePickerHelper(locator()));

  // PRESENTATION
  locator
      .registerFactory(() => ProfileNotifier(locator(), locator(), locator()));
  locator.registerFactory(() => LoginNotifier(locator(), locator(), locator()));
  locator.registerFactory(() => MenuNotifier(locator()));
  locator.registerFactory(() => TableCustomerNotifier(locator(), locator()));
  locator.registerFactory(() => InventoryNotifier(locator(), locator()));
  locator.registerFactory(() => GadaiNotifier(locator()));
  locator.registerFactory(() => PettyCashNotifier(locator()));

  // USES CASE
  locator.registerLazySingleton(() => GetListBranch(locator()));
  locator.registerLazySingleton(() => GetListPosition(locator()));
  locator.registerLazySingleton(() => GetUser(locator()));
  locator.registerLazySingleton(() => UpdateUser(locator()));
  locator.registerLazySingleton(() => GetBranchById(locator()));
  locator.registerLazySingleton(() => GetPositionById(locator()));
  locator.registerLazySingleton(() => GetListCustomer(locator()));
  locator.registerLazySingleton(() => GetCustomerById(locator()));
  locator.registerLazySingleton(() => GetDueInventory(locator()));
  locator.registerLazySingleton(() => GetListSaleInventory(locator()));
  locator.registerLazySingleton(() => CreateCustomer(locator()));
  locator.registerLazySingleton(() => GetListPettyCash(locator()));

  // REPOSITORY
  locator.registerLazySingleton<BranchRepository>(
      () => BranchRepositoryImpl(locator()));
  locator.registerLazySingleton<InventoryRepository>(
      () => InventoryRepositoryImpl(locator()));
  locator.registerLazySingleton<PositionRepository>(
      () => PositionRepositoryImpl(locator()));
  locator.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(locator()));
  locator.registerLazySingleton<CustomerRepository>(
      () => CustomerRepositoryImpl(locator()));
  locator.registerLazySingleton<TransactionRepository>(
      () => TransactionRepositoryImpl(locator()));

  // DATA SOURCE
  locator.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(locator()));

  // AUTHENTICATION
  locator.registerLazySingleton<Authentication>(() => AuthenticationImpl());
}
