import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../../../domain/entities/customer.dart';
import '../provider/table_customer_notifier.dart';
import 'edit_customer_widget.dart';

class TableCustomerWidget extends StatefulWidget {
  const TableCustomerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TableCustomerWidget> createState() => _TableCustomerWidgetState();
}

class _TableCustomerWidgetState extends State<TableCustomerWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<TableCustomerNotifier>().getListCustomerData());
  }

  final String valueRadio = '';

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Provider.of<TableCustomerNotifier>(context, listen: false);
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: Consumer<TableCustomerNotifier>(
        builder: (context, value, child) => Scrollbar(
          thumbVisibility: true,
          thickness: 10,
          interactive: true,
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: value.isHasData
                ? DataTable(
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
                    rows: value.listCustomer
                        .map((data) => _buildRow(context, data))
                        .toList(),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ),
      ),
    );
  }

  DataRow _buildRow(BuildContext context, Customer data) {
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
            data.cif ?? 'cif',
            style: const TextStyle(
              color: AppStyle.greenColor,
            ),
          ),
        ),
        DataCell(
          Text(data.name ?? 'name'),
        ),
        DataCell(
          Text(
            data.nik ?? 'nik',
            style: const TextStyle(
              fontWeight: AppStyle.regular,
            ),
          ),
        ),
        DataCell(
          Text(
            data.phoneNumber ?? '08123456789',
            style: const TextStyle(
              fontWeight: AppStyle.regular,
            ),
          ),
        ),
        DataCell(
          Text(data.address ?? 'address'),
        ),
        DataCell(
          Text(data.work ?? 'work'),
        ),
        DataCell(
          Text(data.email ?? 'email'),
        ),
        DataCell(
          Text(
            data.status ?? 'status',
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
                    return const EditCustomerWidget();
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

  _buildDialog(BuildContext context) {
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
