//key navigation
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static Future pushNamed(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  static Future pushReplacementNamed(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  static void pop() {
    return navigatorKey.currentState!.pop();
  }
}
