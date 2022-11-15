import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

import 'common/utils/image_picker_helper.dart';
import 'presentation/profile/provider/profile_notifier.dart';

final locator = GetIt.instance;

init() {
// PACKAGE
  locator.registerLazySingleton(() => ImagePicker());

// UTILS
  locator.registerLazySingleton(() => ImagePickerHelper(locator()));

  // PRESENTATION
  locator.registerLazySingleton(() => ProfileNotifier(locator()));
}
