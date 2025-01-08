import 'package:flutter/material.dart';

class TaskiBottomSheetViewModel {
  ValueNotifier<int> selectedPage = ValueNotifier<int>(0);

  changePage(int index) {
    selectedPage.value = index;
  }
}
