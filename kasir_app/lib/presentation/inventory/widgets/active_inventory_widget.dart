import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../common/style.dart';

class ActiveInventoryWidget extends StatelessWidget {
  const ActiveInventoryWidget({super.key});

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
          dataRowHeight: 80,
          columnSpacing: 80,
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
              label: Text('Nomor nota'),
            ),
            DataColumn(
              label: Text('Tanggal'),
            ),
            DataColumn(
              label: Text('Status Perpanjangan'),
            ),
            DataColumn(
              label: Text('Nama Barang'),
            ),
            DataColumn(
              label: Text('Nominal Gadai'),
            ),
            DataColumn(
              label: Text('Kelengkapan'),
            ),
            DataColumn(
              label: Text('Minus'),
            ),
            DataColumn(
              label: Text('Status'),
            ),
          ],
          rows: const [],
        ),
      ),
    );
  }
}
