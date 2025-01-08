import 'package:flutter/material.dart';
import 'package:taski_to_do/src/core/router/routers.dart';
import 'package:taski_to_do/src/core/themes/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.routes,
      title: 'Taski ToDo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
    );
  }
}
