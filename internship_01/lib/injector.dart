import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:intership_01/presentation/login/cubit/outlet_cubit.dart';

import 'data/datasources/remote_data_source.dart';
import 'data/repositories/outlet_repository_impl.dart';
import 'domain/repositories/outlet_repository.dart';
import 'domain/usecases/get_data_outlet.dart';

final locator = GetIt.instance;

init() {
  // package: http
  locator.registerLazySingleton<Client>(() => Client());

  //data source
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(locator()),
  );

  //use cases
  locator.registerLazySingleton(() => GetDataOutlet(locator()));

  // state
  locator.registerLazySingleton(() => OutletCubit(locator()));

  //repository
  locator.registerLazySingleton<OutletRepository>(
    () => OutletRepositoryImpl(
      locator(),
    ),
  );
}
