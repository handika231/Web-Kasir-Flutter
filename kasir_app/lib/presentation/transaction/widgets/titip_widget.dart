import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';

class TitipWidget extends StatelessWidget {
  const TitipWidget({
    Key? key,
  }) : super(key: key);
  final String groupValue = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppStyle.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cari',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: AppStyle.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: AppStyle.semiBold,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('NIK/No.SIM/Nama'),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: width * 0.5,
                      child: DropdownButtonFormField(
                        icon: const Icon(
                          Icons.circle_outlined,
                          color: AppStyle.textSecondaryColor,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        hint: const Text('Masukan nomor ktp/sim/nama'),
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text('34021'),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppStyle.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Data Nasabah',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: AppStyle.bold,
                    ),
                  ),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: AppStyle.textSecondaryColor,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const Dialog();
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildFormField(
                      label: 'Nama',
                      hint: 'Masukan nama',
                      width: width * 0.3,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: _buildFormField(
                      label: 'NIK',
                      isNumberField: true,
                      hint: 'Masukan nomor kependudukan',
                      width: width * 0.3,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: _buildFormField(
                      label: 'CIF',
                      isNumberField: true,
                      hint: '2208000012',
                      width: width * 0.3,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildFormField(
                      label: 'No Telepon',
                      hint: 'Masukan nomor telepon',
                      isNumberField: true,
                      width: width * 0.3,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
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
                          SizedBox(
                            width: width * 0.3,
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                              hint: const Text('Pilih pekerjaan'),
                              items: const [
                                DropdownMenuItem(
                                  value: 0,
                                  child: Text('Karyawan Swasta'),
                                ),
                                DropdownMenuItem(
                                  value: 1,
                                  child: Text('PNS'),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text('Wiraswasta'),
                                ),
                              ],
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: _buildFormField(
                      label: 'Email',
                      hint: 'Masukkan alamat email',
                      width: width * 0.3,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
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
                          SizedBox(
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: 'Masukkan Alamat',
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
                  const SizedBox(
                    width: 28,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        _buildFormField(
                          width: width * 0.5,
                          label: 'Nama Ibu Kandung',
                          hint: 'Masukkan nama ibu kandung',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: AppStyle.semiBold,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Status Nasabah'),
                              const SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                width: width * 0.5,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: RadioListTile(
                                        dense: true,
                                        visualDensity: VisualDensity.compact,
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text('Member'),
                                        value: 'member',
                                        groupValue: groupValue,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    Flexible(
                                      child: RadioListTile(
                                        dense: true,
                                        visualDensity: VisualDensity.compact,
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text('Umum'),
                                        value: 'Umum',
                                        groupValue: groupValue,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    Flexible(
                                      child: RadioListTile(
                                        dense: true,
                                        visualDensity: VisualDensity.compact,
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text('Backlist'),
                                        value: 'Backlist',
                                        groupValue: groupValue,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
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
              SizedBox(
                height: 165,
                width: 165,
                child: Material(
                  color: AppStyle.textSecondaryColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(16),
                    child: Center(
                      child: Image.asset(
                        'ic-img'.toPNG,
                        width: 55,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _itemField('Saldo Titip'),
                  const SizedBox(
                    height: 20,
                  ),
                  _itemField('Nominal Titip'),
                  const SizedBox(
                    height: 20,
                  ),
                  _itemField('Total Titip'),
                  const SizedBox(
                    height: 20,
                  ),
                  _itemField('Jumlah yang Di Bayarkan'),
                  const SizedBox(
                    height: 20,
                  ),
                  _itemField('Kembalian'),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppStyle.btnColor,
                      fixedSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "TITIP",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: AppStyle.semiBold,
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
  }

  _itemField(String title) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: AppStyle.medium,
            ),
          ),
        ),
        Expanded(
          child: TextField(
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r'[0-9]'),
              ),
            ],
            decoration: const InputDecoration(
              prefixText: 'Rp. ',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFormField(
      {String label = '',
      bool isNumberField = false,
      double width = 300,
      String hint = ''}) {
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
          SizedBox(
            width: width,
            child: TextField(
              inputFormatters: isNumberField
                  ? [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]'),
                      ),
                    ]
                  : null,
              decoration: InputDecoration(
                hintText: hint,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
