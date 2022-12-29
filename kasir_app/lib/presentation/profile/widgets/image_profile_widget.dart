import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../../menu/provider/menu_notifier.dart';

class ImageProfileWidget extends StatefulWidget {
  const ImageProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageProfileWidget> createState() => _ImageProfileWidgetState();
}

class _ImageProfileWidgetState extends State<ImageProfileWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<MenuNotifier>(context, listen: false).fetchUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final menuNotifier = Provider.of<MenuNotifier>(context, listen: false);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Foto Profil',
            style: TextStyle(
              fontSize: 16,
              fontWeight: AppStyle.semiBold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image:
                    NetworkImage(menuNotifier.user.profilePicture.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
