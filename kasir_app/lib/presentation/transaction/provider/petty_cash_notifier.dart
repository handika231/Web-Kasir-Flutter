import 'package:flutter/material.dart';

class ReportTransactionPettyCashNotifier extends ChangeNotifier {
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  String selectAccount = '';

  onChangeAccount(String value) {
    selectAccount = value;
    notifyListeners();
  }

  @override
  void dispose() {
    dateController.dispose();
    nameController.dispose();
    amountController.dispose();
    super.dispose();
  }
}
