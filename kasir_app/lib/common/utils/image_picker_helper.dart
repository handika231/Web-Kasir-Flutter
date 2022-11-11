import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class ImagePickerHelper {
  Future pickImage() async {
    Image? fromPicker = await ImagePickerWeb.getImageAsWidget();
    return fromPicker;
  }
}
