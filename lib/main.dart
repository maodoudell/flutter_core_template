import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/dependency_injection.dart';
import 'package:flutter_core_template/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupAppModule();
  runApp(const MyApp());
}
