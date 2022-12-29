import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app/common/utils/snackbar_helper.dart';
import 'package:kasir_app/data/exception.dart';
import 'package:kasir_app/domain/entities/position.dart';
import 'package:kasir_app/domain/usecases/get_list_position.dart';
import 'package:kasir_app/domain/usecases/update_user.dart';

import '../../../common/result_state.dart';
import '../../../common/utils/image_picker_helper.dart';

class ProfileNotifier extends ChangeNotifier {
  final ImagePickerHelper helper;
  final GetListPosition getListPosition;
  final UpdateUser updateUser;
  ProfileNotifier(this.helper, this.getListPosition, this.updateUser);
  Uint8List imageBytes = Uint8List(8);
  ResultState state = ResultState.noData;
  bool isHasData = false;

  List<Position> listPositions = [];

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

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  int positionId = 0;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    positionController.dispose();
    super.dispose();
  }

  Future<void> updateUserProfile(BuildContext context) async {
    final result = await updateUser.execute(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      position: positionId,
    );
    result.fold((failure) {
      //message error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(failure.message),
        ),
      );
    }, (data) {
      //message success
      SnackBarHelper.showSnackBar(
        context,
        message: 'Berhasil Update Profile',
        title: 'Success',
        contentType: ContentType.success,
      );
    });
  }
}
