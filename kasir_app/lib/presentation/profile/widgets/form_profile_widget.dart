import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../provider/profile_notifier.dart';

class FormProfileWidget extends StatefulWidget {
  const FormProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FormProfileWidget> createState() => _FormProfileWidgetState();
}

class _FormProfileWidgetState extends State<FormProfileWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<ProfileNotifier>(context, listen: false)
        .fetchListPosition());
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileNotifier>(context, listen: false);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nama',
            style: TextStyle(
              fontSize: 16,
              fontWeight: AppStyle.semiBold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Nama',
              hintStyle: const TextStyle(
                color: AppStyle.textSecondaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Jabatan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Consumer<ProfileNotifier>(
                      builder: (context, value, child) {
                        return value.isHasData
                            ? DropdownButtonFormField<String>(
                                items: provider.listPositions
                                    .map(
                                      (item) => DropdownMenuItem<String>(
                                        value: item.name,
                                        child: Text(item.name),
                                      ),
                                    )
                                    .toList(),
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: AppStyle.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                                onChanged: (val) {},
                                hint: const Text('Pilih Cabang'),
                              )
                            : const SizedBox();
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nomor Telepon',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '08xxxxxxxxxx',
                        hintStyle: const TextStyle(
                          color: AppStyle.textSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Flexible(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 55),
                backgroundColor: AppStyle.btnColor,
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
          ),
        ],
      ),
    );
  }
}
