import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir_app/presentation/profile/provider/profile_notifier.dart';

import 'common/utils/image_picker_helper.dart';

final locator = GetIt.instance;

init() {
// PACKAGE
  locator.registerLazySingleton(() => ImagePicker());

// UTILS
  locator.registerLazySingleton(() => ImagePickerHelper(locator()));

  // PRESENTATION
  locator.registerLazySingleton(() => ProfileNotifier(locator()));
}
