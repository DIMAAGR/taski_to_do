import 'package:flutter/material.dart';
import 'package:taski_to_do/injector.dart';
import 'package:taski_to_do/src/core/main_app/main_app.dart';

Future<void> main() async {
  setupInjector();
  runApp(const MainApp());
}
