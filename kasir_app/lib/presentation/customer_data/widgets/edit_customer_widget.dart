import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/result_status.dart';
import '../../../common/style.dart';
import '../provider/edit_data_notifier.dart';

class EditCustomerWidget extends StatelessWidget {
  const EditCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<EditDataNotifier>(context, listen: false);
    return Dialog(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          decoration: BoxDecoration(
            color: AppStyle.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.only(
            top: 16,
            left: 28,
            right: 28,
          ),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: LayoutBuilder(
              builder: (_, BoxConstraints constraint) {
                return ListView(
                  children: [
                    const Text(
                      'Edit Data Nasabah',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: AppStyle.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: constraint.maxWidth * 0.3,
                          child: _buildFormField(
                            label: 'Nama Lengkap',
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: constraint.maxWidth * 0.3,
                          child: _buildFormField(
                            isNumberField: true,
                            label: 'NIK',
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: constraint.maxWidth * 0.3,
                          child: _buildFormField(
                            isNumberField: true,
                            label: 'CIF',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: constraint.maxWidth * 0.3,
                          child: _buildFormField(
                            label: 'No Telepon',
                            isNumberField: true,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: constraint.maxWidth * 0.3,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: AppStyle.semiBold,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Pekerjaan'),
                                const SizedBox(
                                  height: 12,
                                ),
                                DropdownButtonHideUnderline(
                                  child: DropdownButtonFormField<String>(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'PNS',
                                        child: Text('PNS'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Swasta',
                                        child: Text('Swasta'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Wiraswasta',
                                        child: Text('Wiraswasta'),
                                      ),
                                    ],
                                    onChanged: (val) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: constraint.maxWidth * 0.3,
                          child: _buildFormField(
                            label: 'Email',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          SizedBox(
                            width: constraint.maxWidth * 0.7,
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: AppStyle.semiBold,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Alamat'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  TextField(
                                    maxLines: 6,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: constraint.maxWidth * 0.2,
                                child: _buildFormField(
                                  label: 'Nama Ibu Kandung',
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                width: constraint.maxWidth * 0.2,
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: AppStyle.semiBold,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Tanggal Pertama Gadai'),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      TextField(
                                        onTap: () {
                                          showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2050),
                                          ).then((value) {
                                            debugPrint(value.toString());
                                          });
                                        },
                                        readOnly: true,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.calendar_today,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: AppStyle.semiBold,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Status'),
                              const SizedBox(
                                height: 12,
                              ),
                              Consumer<EditDataNotifier>(
                                builder: (context, ref, child) => Row(
                                  children: [
                                    _buildRadio(
                                      ref,
                                      ResultStatus.active,
                                      'Aktif',
                                    ),
                                    _buildRadio(
                                      ref,
                                      ResultStatus.backlist,
                                      'Backlist',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Consumer<EditDataNotifier>(
                          builder: (context, ref, child) {
                            return AnimatedOpacity(
                              duration: const Duration(milliseconds: 600),
                              opacity:
                                  ref.status == ResultStatus.backlist ? 1 : 0,
                              child: SizedBox(
                                width: constraint.maxWidth * 0.65,
                                child: _buildFormField(
                                  label: 'Alasan Backlist',
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: AppStyle.semiBold,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Foto Nasabah'),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Material(
                              color:
                                  AppStyle.textSecondaryColor.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(16),
                                child: const Center(
                                  child: Icon(
                                    Icons.camera_alt,
                                    size: 100,
                                    color: AppStyle.textSecondaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: constraint.maxWidth * 0.1 - 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildButton(
                            () {},
                            'KEMBALI',
                            AppStyle.textSecondaryColor,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          _buildButton(
                            () {},
                            'SIMPAN',
                            AppStyle.btnColor,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      'Riwayat Edit Data Nasabah',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: AppStyle.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    _buildTable(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  _buildTable() {
    return DataTable(
      dataTextStyle: const TextStyle(
        fontSize: 15,
        color: AppStyle.blackColor,
        fontWeight: AppStyle.semiBold,
      ),
      columns: const [
        DataColumn(
          label: Text(
            '',
          ),
        ),
        DataColumn(
          label: Text(
            '',
          ),
        ),
        DataColumn(
          label: Text(
            '',
          ),
        ),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Text(
                '17 Oktober 2022',
                style: TextStyle(
                  color: AppStyle.greenColor,
                  fontWeight: AppStyle.medium,
                  fontSize: 15,
                ),
              ),
            ),
            DataCell(
              Text('Fulana'),
            ),
            DataCell(
              Text('Ubah Status'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '28 Oktober 2022',
                style: TextStyle(
                  color: AppStyle.greenColor,
                  fontWeight: AppStyle.medium,
                  fontSize: 15,
                ),
              ),
            ),
            DataCell(
              Text('Fulan'),
            ),
            DataCell(
              Text('Ubah Pekerjaan'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '17 Oktober 2022',
                style: TextStyle(
                  color: AppStyle.greenColor,
                  fontWeight: AppStyle.medium,
                  fontSize: 15,
                ),
              ),
            ),
            DataCell(
              Text('Fulana'),
            ),
            DataCell(
              Text('Ubah Alamat'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(VoidCallback onPressed, String text, Color color) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: AppStyle.semiBold,
          ),
        ),
      ),
    );
  }

  Widget _buildRadio(EditDataNotifier ref, ResultStatus value, String title) {
    return SizedBox(
      width: 150,
      child: RadioListTile(
        activeColor: AppStyle.greenColor,
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        value: value,
        groupValue: ref.status,
        onChanged: (ResultStatus? value) {
          ref.changeStatus(value!);
        },
        title: Text(title),
      ),
    );
  }

  Widget _buildFormField({String label = '', bool isNumberField = false}) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 15,
        fontWeight: AppStyle.semiBold,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(
            height: 12,
          ),
          TextField(
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
        ],
      ),
    );
  }
}
