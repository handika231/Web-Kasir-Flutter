//key navigator
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

class Navigation {
  static void pushNamed(String routeName) {
    navigationKey.currentState!.pushNamed(routeName);
  }

  static void pop() {
    navigationKey.currentState!.pop();
  }
}
