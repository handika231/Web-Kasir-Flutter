import 'package:flutter/material.dart';
import 'package:kasir_app/common/style.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

import '../widgets/form_profile_widget.dart';
import '../widgets/image_profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Profile',
      body: Container(
        margin: const EdgeInsets.all(27),
        padding: const EdgeInsets.only(
          top: 24,
          left: 28,
          bottom: 60,
        ),
        decoration: BoxDecoration(
          color: AppStyle.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profile',
              style: TextStyle(
                fontSize: 22,
                fontWeight: AppStyle.bold,
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  FormProfileWidget(),
                  SizedBox(
                    width: 24,
                  ),
                  ImageProfileWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
