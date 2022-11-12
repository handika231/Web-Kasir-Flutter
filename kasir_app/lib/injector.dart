import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir_app/presentation/profile/provider/profile_notifier.dart';

import 'common/utils/image_picker_helper.dart';

final locator = GetIt.instance;

init() {
  // locator.registerLazySingleton(() => Api());
  // locator.registerLazySingleton(() => DatabaseHelper());
  // locator.registerLazySingleton(() => SharedPref());
  // locator.registerLazySingleton(() => Repository());
  // locator.registerLazySingleton(() => Bloc());

// PACKAGE
  locator.registerLazySingleton(() => ImagePicker());

// UTILS
  locator.registerLazySingleton(() => ImagePickerHelper(locator()));

  // PRESENTATION
  locator.registerLazySingleton(() => ProfileNotifier(locator()));
}
