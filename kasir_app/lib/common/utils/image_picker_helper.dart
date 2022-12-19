import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  ImagePicker picker;
  ImagePickerHelper(this.picker);
  Future<Uint8List> pickImage() async {
    Uint8List results = Uint8List(8);
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      results = await image.readAsBytes();
    }
    return results;
  }
}
