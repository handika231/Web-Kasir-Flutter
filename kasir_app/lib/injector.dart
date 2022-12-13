import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir_app/data/auth/authentication.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/repositories/branch_repository_impl.dart';
import 'package:kasir_app/domain/repositories/branch_repository.dart';
import 'package:kasir_app/domain/repositories/position_repository.dart';
import 'package:kasir_app/domain/usecases/get_list_position.dart';
import 'package:kasir_app/presentation/login/provider/login_notifier.dart';

import 'common/utils/image_picker_helper.dart';
import 'data/repositories/position_repository_impl.dart';
import 'domain/usecases/get_list_branch.dart';
import 'presentation/profile/provider/profile_notifier.dart';

final locator = GetIt.instance;

init() {
// PACKAGE
  locator.registerLazySingleton(() => ImagePicker());
  locator.registerLazySingleton(() => Client());

// UTILS
  locator.registerLazySingleton(() => ImagePickerHelper(locator()));

  // PRESENTATION
  locator.registerFactory(() => ProfileNotifier(locator(), locator()));
  locator.registerFactory(() => LoginNotifier(locator(), locator()));

  // USES CASE
  locator.registerLazySingleton(() => GetListBranch(locator()));
  locator.registerLazySingleton(() => GetListPosition(locator()));

  // REPOSITORY
  locator.registerLazySingleton<BranchRepository>(
      () => BranchRepositoryImpl(locator()));
  locator.registerLazySingleton<PositionRepository>(
    () => PositionRepositoryImpl(
      locator(),
    ),
  );

  // DATA SOURCE
  locator.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(locator()));

  // AUTHENTICATION
  locator.registerLazySingleton<Authentication>(() => AuthenticationImpl());
}
