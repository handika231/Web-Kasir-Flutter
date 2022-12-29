import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kasir_app/domain/entities/customer.dart';
import 'package:kasir_app/domain/usecases/get_customer_id.dart';
import 'package:kasir_app/domain/usecases/get_list_customer.dart';

class TableCustomerNotifier extends ChangeNotifier {
  GetListCustomer getListCustomer;
  GetCustomerById getCustomerById;
  TableCustomerNotifier(this.getListCustomer, this.getCustomerById);
  List<Customer> listCustomer = [];
  Customer data = const Customer();
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

  Future<Customer> getCustomerByIdData(int id) async {
    final result = await getCustomerById.execute(id);
    return result.fold((failure) {
      return const Customer();
    }, (result) {
      data = result;
      isHasData = true;
      notifyListeners();
      return data;
    });
  }
}
