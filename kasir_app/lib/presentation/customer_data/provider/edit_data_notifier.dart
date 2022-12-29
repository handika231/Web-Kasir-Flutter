import 'package:flutter/material.dart';

import '../../../common/result_status.dart';

class EditDataNotifier extends ChangeNotifier {
  ResultStatus? status = ResultStatus.active;

  void changeStatus(ResultStatus value) {
    status = value;
    notifyListeners();
  }
}
