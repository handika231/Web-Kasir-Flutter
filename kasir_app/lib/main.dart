import 'package:flutter/material.dart';

import 'application/application.dart';
import 'injector.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const Application());
}
