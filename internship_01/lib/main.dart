import 'package:flutter/material.dart';

import 'application.dart';
import 'injector.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const Application());
}
