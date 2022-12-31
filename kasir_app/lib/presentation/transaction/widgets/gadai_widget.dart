import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../provider/gadai_notifier.dart';

class GadaiWidget extends StatelessWidget {
  const GadaiWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gadaiProvider = Provider.of<GadaiNotifier>(context);
    String value = '';
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
                      controller: gadaiProvider.nameController,
                      hint: 'Masukan nama',
                      width: width * 0.3,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: _buildFormField(
                      controller: gadaiProvider.nikController,
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
                      controller: gadaiProvider.cifController,
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
                      controller: gadaiProvider.phoneController,
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
                          SizedBox(
                            width: width * 0.3,
                            child: _buildFormField(
                              width: width * 0.3,
                              controller: gadaiProvider.workController,
                              label: 'Pekerjaan',
                              hint: 'Masukan pekerjaan',
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
                      controller: gadaiProvider.emailController,
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
                          controller: gadaiProvider.motherNameController,
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
                              Consumer<GadaiNotifier>(
                                builder: (context, value, child) => SizedBox(
                                  width: width * 0.5,
                                  child: Row(
                                    children: [
                                      radioTile(value, 'active'),
                                      radioTile(value, 'backlist'),
                                    ],
                                  ),
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
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  gadaiProvider.createCustomerData(context);
                },
                child: const Text(
                  "Create",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Flexible radioTile(GadaiNotifier value, String text) {
    return Flexible(
      child: RadioListTile<String>(
        activeColor: AppStyle.redColor,
        dense: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        contentPadding: EdgeInsets.zero,
        title: Text(text),
        value: text,
        groupValue: value.groupValue,
        onChanged: (val) {
          value.onChangeValue(val.toString());
          print(value.groupValue);
        },
      ),
    );
  }

  Widget _buildFormField(
      {String label = '',
      bool isNumberField = false,
      double width = 300,
      required TextEditingController controller,
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
              controller: controller,
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
