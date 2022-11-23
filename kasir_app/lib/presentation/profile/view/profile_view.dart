import 'package:flutter/material.dart';
import 'package:kasir_app/injector.dart' as di;
import 'package:kasir_app/presentation/profile/provider/profile_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../../menu/widgets/menu_scaffold.dart';
import '../widgets/form_profile_widget.dart';
import '../widgets/image_profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: di.locator<ProfileNotifier>(),
      child: MenuScaffold(
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
          child: SingleChildScrollView(
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
                const Divider(),
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
        ),
      ),
    );
  }
}
