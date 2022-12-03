import 'package:flutter/material.dart';

class EditDataNotifier extends ChangeNotifier {
  bool isStatus = false;
  void changeStatus(bool value) {
    isStatus = value;
    notifyListeners();
  }
}
