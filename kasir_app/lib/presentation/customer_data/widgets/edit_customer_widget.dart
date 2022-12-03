import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/style.dart';

class EditCustomerWidget extends StatelessWidget {
  const EditCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
                  ],
                );
              },
            ),
          ),
        ),
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
