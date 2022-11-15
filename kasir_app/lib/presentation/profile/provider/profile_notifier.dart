import 'package:flutter/foundation.dart';

import '../../../common/result_state.dart';
import '../../../common/utils/image_picker_helper.dart';

class ProfileNotifier extends ChangeNotifier {
  final ImagePickerHelper helper;
  ProfileNotifier(this.helper);
  Uint8List imageBytes = Uint8List(8);
  ResultState state = ResultState.NoData;
  Future pickImage() async {
    state = ResultState.Loading;
    notifyListeners();
    try {
      imageBytes = await helper.pickImage();
      state = ResultState.HasData;
      notifyListeners();
    } catch (e) {
      state = ResultState.Error;
      notifyListeners();
    }
  }
}
