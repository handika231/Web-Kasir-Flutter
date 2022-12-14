import 'package:flutter/foundation.dart';
import 'package:kasir_app/data/exception.dart';
import 'package:kasir_app/domain/entities/position.dart';
import 'package:kasir_app/domain/usecases/get_list_position.dart';

import '../../../common/result_state.dart';
import '../../../common/utils/image_picker_helper.dart';

class ProfileNotifier extends ChangeNotifier {
  final ImagePickerHelper helper;
  final GetListPosition getListPosition;
  ProfileNotifier(this.helper, this.getListPosition);
  Uint8List imageBytes = Uint8List(8);
  ResultState state = ResultState.noData;
  bool isHasData = false;

  bool isHover = false;
  final positionValue = '';
  List<Position> listPositions = [];
  void onHover() {
    isHover = true;
    notifyListeners();
  }

  void onExit() {
    isHover = false;
    notifyListeners();
  }

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

  Future<void> fetchListPosition() async {
    final result = await getListPosition.execute();
    result.fold((failure) {
      listPositions = [];
      notifyListeners();
    }, (data) {
      listPositions = data;
      isHasData = true;
      notifyListeners();
    });
  }
}
