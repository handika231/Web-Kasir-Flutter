import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir_app/common/result_state.dart';
import 'package:kasir_app/common/utils/image_picker_helper.dart';

class ProfileNotifier extends ChangeNotifier {
  final ImagePickerHelper imageHelper;
  ProfileNotifier(this.imageHelper);
  File? imagePath;
  Uint8List imageBytes = Uint8List(8);
  ResultState state = ResultState.NoData;
  Future<void> pickImage() async {
    if (kIsWeb) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        final result = await image.readAsBytes();
        imageBytes = result;
        imagePath = File('a');
        notifyListeners();
      }
    } else {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        imagePath = File(image.path);
        notifyListeners();
      }
    }
  }

  // Future pickImage() async {
  //   try {
  //     state = ResultState.Loading;
  //     notifyListeners();
  //     imagePath = await imageHelper.pickImage();
  //     state = ResultState.HasData;
  //     notifyListeners();
  //   } catch (e) {
  //     state = ResultState.Error;
  //     notifyListeners();
  //   }
  //   return imagePath;
  // }
}
