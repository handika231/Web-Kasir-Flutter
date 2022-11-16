import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasir_app/common/extension.dart';

import '../../../common/style.dart';
import '../../../domain/entities/customer.dart';

class TableCustomerWidget extends StatelessWidget {
  const TableCustomerWidget({
    Key? key,
  }) : super(key: key);
  final String valueRadio = '';

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
                (customer) => _buildRow(context, customer),
              )
              .toList(),
        ),
      ),
    );
  }

  DataRow _buildRow(BuildContext context, Customer customer) {
    return DataRow(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return _buildDialog(context);
          },
        );
      },
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
              color: customer.status ? AppStyle.greenColor : AppStyle.redColor,
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
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return _buildEditDialog(context);
                  },
                );
              },
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
    );
  }

  _buildEditDialog(BuildContext context) {
    return Dialog(
      insetAnimationCurve: Curves.easeInQuint,
      insetAnimationDuration: const Duration(milliseconds: 500),
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          padding: const EdgeInsets.only(
            top: 16,
            left: 28,
            bottom: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Edit Data Nasabah GMJ Gadai',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: AppStyle.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                thickness: 4,
                color: AppStyle.bgColorDashboard,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  _buildFormField(label: 'Nama'),
                  _buildFormField(isNumberField: true, label: 'NIK'),
                  _buildFormField(isNumberField: true, label: 'CIF'),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  _buildFormField(label: 'No. Telepon', isNumberField: true),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pekerjaan',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: AppStyle.semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: 250,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: AppStyle.black,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: DropdownButton(
                                  isExpanded: true,
                                  value: 'Karyawan Swasta',
                                  borderRadius: BorderRadius.circular(8),
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Karyawan Swasta',
                                      child: Text('Karyawan Swasta'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'PNS',
                                      child: Text('PNS'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Wiraswasta',
                                      child: Text('Wiraswasta'),
                                    ),
                                  ],
                                  onChanged: (val) {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildFormField(label: 'Email'),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Alamat',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: AppStyle.semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const TextField(
                            maxLines: 7,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    Column(
                      children: [
                        _buildFormField(label: 'Nama Ibu Kandung'),
                        const SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Tanggal Pertama Gadai',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: AppStyle.semiBold,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2020),
                                      lastDate: DateTime(2025),
                                    );
                                  },
                                  readOnly: true,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.calendar_today,
                                      color: AppStyle.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: AppStyle.semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildFormField({String label = '', bool isNumberField = false}) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 15,
        fontWeight: AppStyle.semiBold,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                inputFormatters: isNumberField
                    ? [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'[0-9]'),
                        ),
                      ]
                    : null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Dialog(
      insetAnimationCurve: Curves.easeInOut,
      insetAnimationDuration: const Duration(
        milliseconds: 300,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: FractionallySizedBox(
        heightFactor: 0.7,
        child: Container(
          padding: const EdgeInsets.only(
            left: 40,
            right: 25,
            top: 27,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Detail Nasabah',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: AppStyle.bold,
                    ),
                  ),
                  CircleAvatar(
                    foregroundColor: AppStyle.white,
                    backgroundColor: AppStyle.textSecondaryColor,
                    child: IconButton(
                      splashColor: AppStyle.white,
                      splashRadius: 10,
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 3,
                color: AppStyle.bgColorDashboard,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'img-customer'.toPNG,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildTextDialog('Nama', 'Ardianto'),
                              _buildTextDialog('CIF', '2208000012'),
                              _buildTextDialog('Pekerjaan', 'Karyawan Swasta'),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              _buildTextDialog('NIK', '3402142008940002'),
                              _buildTextDialog('No.Telepon', '0895401278260'),
                              _buildTextDialog('Email', 'ardianto@gmail.com'),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              _buildTextDialog('Nama Ibu Kandung', 'Yulianti'),
                              _buildTextDialog(
                                  'Tanggal Pertama Gadai', '17 October 2022'),
                              _buildTextDialog('Status Nasabah', 'Aktif'),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          _buildTextDialog(
                            'Alamat',
                            'Jl.Jogja-wonosari km13, Kabregan rt 01, Srimulyo, Piyungan, Bantul, Daerah Istimewa Yogyakarta',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildTextDialog(String title, String value) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: AppStyle.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
