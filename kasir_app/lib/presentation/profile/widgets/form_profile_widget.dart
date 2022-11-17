import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/style.dart';

class FormProfileWidget extends StatelessWidget {
  const FormProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Jabatan',
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
