import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/menu/widgets/menu_scaffold.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuScaffold(
      title: 'Profile',
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
