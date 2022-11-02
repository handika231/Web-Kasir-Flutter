import 'package:flutter/material.dart';

import '../../../common/style.dart';
import '../../../domain/entities/customer.dart';

class TableCustomerWidget extends StatelessWidget {
  const TableCustomerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingTextStyle: TextStyle(
            fontSize: 15,
            color: greyColor,
          ),
          dataTextStyle: TextStyle(
            fontSize: 15,
            fontWeight: bold,
            color: blackColor,
          ),
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
            DataColumn(
              label: Text('Status'),
            ),
            DataColumn(
              label: Text(''),
            ),
          ],
          rows: dataCustomer
              .map(
                (customer) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        customer.id,
                        style: TextStyle(
                          color: greenColor,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(customer.name),
                    ),
                    DataCell(
                      Text(
                        customer.nik,
                        style: TextStyle(
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        customer.phone,
                        style: TextStyle(
                          fontWeight: regular,
                        ),
                      ),
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
                    DataCell(
                      Text(
                        customer.status ? 'Aktif' : 'Backlist',
                        style: TextStyle(
                          color: customer.status ? greenColor : redColor,
                        ),
                      ),
                    ),
                    DataCell(
                      Material(
                        color: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: customer.onTap,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.edit,
                              size: 16,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
