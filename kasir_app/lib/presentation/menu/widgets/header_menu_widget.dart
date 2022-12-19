import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kasir_app/presentation/login/provider/login_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../provider/menu_provider.dart';

class HeaderMenuWidget extends StatefulWidget {
  const HeaderMenuWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  State<HeaderMenuWidget> createState() => _HeaderMenuWidgetState();
}

class _HeaderMenuWidgetState extends State<HeaderMenuWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<MenuNotifier>().getUser());
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MenuNotifier>(context, listen: false);
    return Container(
      color: AppStyle.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 24,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              provider.toggleCollapsed();
            },
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: AppStyle.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              if (widget.subtitle != null)
                Text(
                  widget.subtitle ?? '',
                  style: const TextStyle(
                    color: AppStyle.textSecondaryColor,
                  ),
                ),
            ],
          ),
          const Spacer(),
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
                Consumer<MenuNotifier>(
                  builder: (context, value, child) {
                    return value.isHasData
                        ? Text(
                            context.read<MenuNotifier>().headerName,
                            style: const TextStyle(fontSize: 18),
                          )
                        : const SizedBox();
                  },
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
                      PopupMenuItem(
                        onTap: () {
                          // TODO:  HARDCODE
                          context.read<MenuNotifier>().changeIndex(6);
                        },
                        value: 'profile',
                        child: const Text('Profile'),
                      ),
                      PopupMenuItem(
                        onTap: () async {
                          await context
                              .read<LoginNotifier>()
                              .logout(context)
                              .then(
                            (_) {
                              GoRouter.of(context).goNamed('login');
                              context.read<MenuNotifier>().changeIndex(0);
                            },
                          );
                        },
                        value: 'keluar',
                        child: const Text('Keluar'),
                      ),
                    ];
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
