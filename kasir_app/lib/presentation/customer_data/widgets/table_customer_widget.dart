import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/style.dart';
import '../../../domain/entities/customer.dart';

class TableCustomerWidget extends StatelessWidget {
  const TableCustomerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingTextStyle: const TextStyle(
            fontSize: 15,
            color: AppStyle.textSecondaryColor,
          ),
          dataTextStyle: const TextStyle(
            fontSize: 15,
            fontWeight: AppStyle.bold,
            color: AppStyle.blackColor,
          ),
          border: const TableBorder(
            horizontalInside: BorderSide(
              color: AppStyle.bgColorDashboard,
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
                        style: const TextStyle(
                          color: AppStyle.greenColor,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(customer.name),
                    ),
                    DataCell(
                      Text(
                        customer.nik,
                        style: const TextStyle(
                          fontWeight: AppStyle.regular,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        customer.phone,
                        style: const TextStyle(
                          fontWeight: AppStyle.regular,
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
                          color: customer.status
                              ? AppStyle.greenColor
                              : AppStyle.redColor,
                        ),
                      ),
                    ),
                    DataCell(
                      Material(
                        color: AppStyle.btnColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: customer.onTap,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.edit,
                              size: 16,
                              color: AppStyle.white,
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
