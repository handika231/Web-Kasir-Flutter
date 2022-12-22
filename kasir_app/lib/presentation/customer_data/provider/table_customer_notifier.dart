import 'package:flutter/material.dart';
import 'package:kasir_app/domain/entities/customer.dart';
import 'package:kasir_app/domain/usecases/get_list_customer.dart';

class TableCustomerNotifier extends ChangeNotifier {
  GetListCustomer getListCustomer;
  TableCustomerNotifier(this.getListCustomer);
  List<Customer> listCustomer = [];
  bool isHasData = false;
  Future<List<Customer>> getListCustomerData() async {
    final result = await getListCustomer.execute();
    result.fold((failure) => debugPrint(failure.message), (data) {
      listCustomer = data;
      isHasData = true;
      notifyListeners();
    });
    return listCustomer;
  }
}
