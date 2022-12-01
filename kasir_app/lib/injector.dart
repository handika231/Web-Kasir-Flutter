import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir_app/data/datasources/remote_data_source.dart';
import 'package:kasir_app/data/repositories/branch_repository_impl.dart';
import 'package:kasir_app/domain/repositories/branch_repository.dart';
import 'package:kasir_app/presentation/login/provider/login_notifier.dart';

import 'common/utils/image_picker_helper.dart';
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
  locator.registerLazySingleton(() => ProfileNotifier(locator()));

  // USES CASE
  locator.registerLazySingleton(() => GetListBranch(locator()));

  // REPOSITORY
  locator.registerLazySingleton<BranchRepository>(
      () => BranchRepositoryImpl(locator()));

  // DATA SOURCE
  locator.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(locator()));

//STATE
  locator.registerFactory(() => LoginNotifier(locator()));
}
