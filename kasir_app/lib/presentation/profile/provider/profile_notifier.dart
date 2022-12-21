import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
  TextEditingController passwordController = TextEditingController();
  TextEditingController positionController = TextEditingController();

  void clear() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
    positionController.clear();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    positionController.dispose();
    clear();
    super.dispose();
  }

  Future<void> updateUserProfile(BuildContext context) async {
    final result = await updateUser.execute(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      position: positionController.text,
      image: helper.imageName.toString(),
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Update profile success'),
        ),
      );
      clear();
    });
  }
}
