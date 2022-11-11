import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kasir_app/common/result_state.dart';
import 'package:kasir_app/common/utils/image_picker_helper.dart';

class ProfileNotifier extends ChangeNotifier {
  final ImagePickerHelper imageHelper;
  ProfileNotifier(this.imageHelper);
  File? imagePath;
  ResultState state = ResultState.NoData;

  Future pickImage() async {
    try {
      state = ResultState.Loading;
      notifyListeners();
      imagePath = await imageHelper.pickImage();
      state = ResultState.HasData;
      notifyListeners();
    } catch (e) {
      state = ResultState.Error;
      notifyListeners();
    }
    return imagePath;
  }
}
