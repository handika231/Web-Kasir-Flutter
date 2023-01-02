import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';
import '../../../common/utils/separator_helper.dart';
import '../provider/petty_cash_notifier.dart';

class PettyCashWidget extends StatelessWidget {
  const PettyCashWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final pettyProvider =
        Provider.of<ReportTransactionPettyCashNotifier>(context, listen: false);
    return ListView(
      padding: const EdgeInsets.fromLTRB(50, 50, 50, 100),
      children: [
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 15,
            fontWeight: AppStyle.semiBold,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Tanggal'),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: pettyProvider.dateController,
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    ).then((value) {
                      if (value != null) {
                        pettyProvider.dateController.text =
                            DateFormat('yyyy-MM-dd').format(value);
                      }
                    });
                  },
                  decoration: InputDecoration(
                    hintText: now,
                    prefixIcon: const Icon(
                      Icons.calendar_today,
                      color: AppStyle.textSecondaryColor,
                    ),
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
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: _buildFormField(
                controller: pettyProvider.nameController,
                hint: 'Masukkan nama pengeluaran',
                label: 'Nama Pengeluaran',
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: _buildFormField(
                controller: pettyProvider.amountController,
                hint: '0',
                label: 'Nominal Pengeluaran',
                isNumberField: true,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Akun',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    hint: const Text('Pilih akun'),
                    items: const [
                      DropdownMenuItem(
                        value: 'Kas',
                        child: Text('Kas'),
                      ),
                      DropdownMenuItem(
                        value: 'Hutang',
                        child: Text('Hutang'),
                      ),
                      DropdownMenuItem(
                        value: 'Laba Rugi',
                        child: Text('Laba Rugi'),
                      ),
                      DropdownMenuItem(
                        value: 'Lain-lain',
                        child: Text('Lain-lain'),
                      ),
                    ],
                    onChanged: (value) {
                      pettyProvider.onChangeAccount(value.toString());
                      print(pettyProvider.selectAccount);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kode Akun',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    hint: const Text('Pilih kode akun'),
                    items: const [],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                text: 'Foto Nota ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: AppStyle.semiBold,
                ),
                children: [
                  TextSpan(
                    text: '(Di atas barang)',
                    style: TextStyle(
                      fontWeight: AppStyle.light,
                      color: AppStyle.textSecondaryColor,
                    ),
                  )
                ],
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
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: AppStyle.btnColor,
            fixedSize: const Size.fromHeight(50),
          ),
          onPressed: () {},
          child: const Text(
            'Expense',
            style: TextStyle(
              fontSize: 18,
              fontWeight: AppStyle.semiBold,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

Widget _buildFormField(
    {String label = '',
    bool isNumberField = false,
    String hint = '',
    required TextEditingController controller}) {
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
          controller: controller,
          inputFormatters: isNumberField
              ? [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                  ThousandsSeparatorInputFormatter()
                ]
              : null,
          decoration: InputDecoration(
            hintText: hint,
            prefix: isNumberField
                ? const Text(
                    'Rp. ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: AppStyle.semiBold,
                    ),
                  )
                : null,
            border: const OutlineInputBorder(
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
