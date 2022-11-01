import 'package:flutter/material.dart';
import 'package:intership_01/common/style.dart';

class CustomerPage extends StatelessWidget {
  static const nameRoute = '/customer';
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [],
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Data Nasabah',
          style: TextStyle(
            fontSize: 22,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
