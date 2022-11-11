import 'package:flutter/material.dart';
import 'package:kasir_app/application/application.dart';

import 'injector.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const Application());
}
