import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';
import 'package:intership_01/common/style.dart';
import 'package:intership_01/domain/model/customer_model.dart';

import '../widgets/build_drawer_widget.dart';

class CustomerPage extends StatelessWidget {
  static const nameRoute = '/customer';
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      drawer: const BuildDrawerWidget(),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                color: greyColor,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset(
                  'profile'.path,
                ),
                const SizedBox(
                  width: 27,
                ),
                const Text(
                  'Fulana',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 27,
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          )
        ],
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
      body: Container(
        margin: const EdgeInsets.only(top: 26, left: 16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Data Nasabah',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Telusuri',
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  border: TableBorder(
                    horizontalInside: BorderSide(
                      color: greyColor,
                      width: 1,
                    ),
                  ),
                  columns: const [
                    DataColumn(
                      label: Text('CIF'),
                    ),
                    DataColumn(
                      label: Text('Nama'),
                    ),
                    DataColumn(
                      label: Text('NIK'),
                    ),
                    DataColumn(
                      label: Text('Nomor Telepon'),
                    ),
                    DataColumn(
                      label: Text('Alamat'),
                    ),
                    DataColumn(
                      label: Text('Pekerjaan'),
                    ),
                    DataColumn(
                      label: Text('Email'),
                    ),
                  ],
                  rows: dataCustomer
                      .map(
                        (customer) => DataRow(
                          cells: [
                            DataCell(
                              Text(customer.id),
                            ),
                            DataCell(
                              Text(customer.name),
                            ),
                            DataCell(
                              Text(customer.nik),
                            ),
                            DataCell(
                              Text(customer.phone),
                            ),
                            DataCell(
                              Text(customer.address),
                            ),
                            DataCell(
                              Text(customer.job),
                            ),
                            DataCell(
                              Text(customer.email),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
