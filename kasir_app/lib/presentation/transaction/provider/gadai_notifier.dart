import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app/common/utils/snackbar_helper.dart';
import 'package:kasir_app/domain/usecases/create_customer.dart';

import '../../../data/models/customer_model/customer_model.dart';

class GadaiNotifier extends ChangeNotifier {
  final CreateCustomer createCustomer;
  GadaiNotifier(this.createCustomer);
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController cifController = TextEditingController();
  TextEditingController workController = TextEditingController();
  TextEditingController motherNameController = TextEditingController();
  //create group value and value selected
  String groupValue = '';
  onChangeValue(String value) {
    groupValue = value;
    notifyListeners();
  }

  Future<void> createCustomerData(BuildContext context) async {
    final customer = CustomerModel(
      name: nameController.text,
      address: addressController.text,
      phoneNumber: phoneController.text,
      email: emailController.text,
      nik: nikController.text,
      cif: cifController.text,
      work: workController.text,
      motherName: motherNameController.text,
      status: groupValue,
    );
    //create customer
    final result = await createCustomer.execute(customer);
    result.fold(
      (failure) => SnackBarHelper.showSnackBar(context,
          message: 'Email atau nik atau cif sudah terdaftar',
          title: failure.message,
          contentType: ContentType.failure),
      (customer) => SnackBarHelper.showSnackBar(
        context,
        message: 'Berhasil membuat data nasabah',
        title: 'Berhasil',
        contentType: ContentType.success,
      ),
    );
  }

  @override
  void dispose() {
    List<TextEditingController> controllers = [
      nameController,
      addressController,
      phoneController,
      emailController,
      nikController,
      cifController,
      workController,
      motherNameController,
    ];
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
