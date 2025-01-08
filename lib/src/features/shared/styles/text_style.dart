import 'package:flutter/material.dart';

import '../../../core/themes/theme.dart';

abstract class AppTextStyle {
  static const String _fontFamily = 'Urbanist';

  static TextStyle appbarUserTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppTheme.colors.slatePurple,
  );
  static const TextStyle dropdownButtonTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}
