import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/provider/menu_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../../menu/widgets/menu_scaffold.dart';
import '../widgets/form_profile_widget.dart';
import '../widgets/image_profile_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => Provider.of<MenuNotifier>(context, listen: false).fetchUser());
  }

  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuNotifier>(context, listen: false);

    return MenuScaffold(
      title: 'Profile',
      body: Container(
        margin: const EdgeInsets.all(27),
        padding: const EdgeInsets.only(
          top: 24,
          left: 28,
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
                  children: [
                    const FormProfileWidget(),
                    const SizedBox(
                      width: 24,
                    ),
                    Consumer<MenuNotifier>(
                      builder: (context, ref, child) {
                        return ref.user.profilePicture!.isEmpty
                            ? const SizedBox()
                            : const ImageProfileWidget();
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
