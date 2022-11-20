import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/style.dart';

class EditCustomerWidget extends StatelessWidget {
  const EditCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            right: 28,
          ),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: SingleChildScrollView(
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
                      _buildFormField(
                          label: 'No. Telepon', isNumberField: true),
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
                        children: [
                          const Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: AppStyle.semiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (val) {},
                              ),
                              const Text('Aktif'),
                              const SizedBox(
                                width: 12,
                              ),
                              Radio(
                                value: 2,
                                groupValue: 1,
                                onChanged: (val) {},
                              ),
                              const Text('Tidak Aktif'),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: AppStyle.semiBold,
                        ),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Alasan Blacklist'),
                              SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                width: 750,
                                child: TextField(
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
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const Text(
                    'Foto Nasabah',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Material(
                    elevation: 2,
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add_a_photo,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppStyle.textSecondaryColor,
                            minimumSize: const Size(200, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Kembali",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: AppStyle.semiBold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppStyle.btnColor,
                            minimumSize: const Size(200, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Simpan",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: AppStyle.semiBold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
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
}
