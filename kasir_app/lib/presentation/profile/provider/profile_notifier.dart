import 'package:flutter/foundation.dart';
import 'package:kasir_app/data/exception.dart';

import '../../../common/result_state.dart';
import '../../../common/utils/image_picker_helper.dart';

class ProfileNotifier extends ChangeNotifier {
  final ImagePickerHelper helper;
  ProfileNotifier(this.helper);
  Uint8List imageBytes = Uint8List(8);
  ResultState state = ResultState.noData;

  Future<void> pickImage() async {
    state = ResultState.loading;
    notifyListeners();
    try {
      imageBytes = await helper.pickImage();
      state = ResultState.hasData;
      notifyListeners();
    } on ImageException catch (e) {
      state = ResultState.error;
      notifyListeners();
      throw ImageException(message: e.message);
    }
  }
}
