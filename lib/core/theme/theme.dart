import 'package:flutter/material.dart';

import 'package:clicker/core/theme/light_theme.dart';

class AppTheme{
  ThemeData get lightTheme => AppLightTheme().theme;
  static ThemeMode get themeMode => ThemeMode.light;
}