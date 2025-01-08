import 'package:flutter/material.dart';
import 'package:taski_to_do/src/features/shared/components/taski_app_bar.dart';
import 'package:taski_to_do/src/features/shared/components/taski_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskiAppBar(),
      bottomSheet: TaskiBottomSheet(),
    );
  }
}
