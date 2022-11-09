//key navigator
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

class Navigation {
  static Future<void> pushNamed(String routeName) async {
    navigationKey.currentState!.pushNamed(routeName);
  }

  static Future<void> pushReplacementNamed(String routeName) async {
    navigationKey.currentState!.pushReplacementNamed(routeName);
  }

  static void pop() {
    navigationKey.currentState!.pop();
  }
}
