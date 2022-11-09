import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/style.dart';

class HeaderMenuWidget extends StatelessWidget {
  const HeaderMenuWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyle.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: AppStyle.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: const TextStyle(
                    color: AppStyle.textSecondaryColor,
                  ),
                ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                color: AppStyle.textSecondaryColor,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/img-fulana.png',
                    width: 56,
                  ),
                ),
                const SizedBox(
                  width: 27,
                ),
                const Text(
                  'Fulana',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 27,
                ),
                PopupMenuButton(
                  constraints: const BoxConstraints(
                    minWidth: 200,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: AppStyle.textSecondaryColor,
                  ),
                  offset: const Offset(0, 30),
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        value: 'profile',
                        child: Text('Profile'),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          GoRouter.of(context).replace('/');
                        },
                        value: 'keluar',
                        child: const Text('Keluar'),
                      ),
                    ];
                  },
                  onSelected: (value) {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
