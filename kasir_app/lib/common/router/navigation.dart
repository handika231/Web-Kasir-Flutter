import 'package:go_router/go_router.dart';

import '../../presentation/login/view/login_view.dart';
import '../../presentation/menu/view/menu_view.dart';
import '../../presentation/profile/view/profile_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/menu',
      builder: (context, state) => const MenuView(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileView(),
    ),
  ],
);
