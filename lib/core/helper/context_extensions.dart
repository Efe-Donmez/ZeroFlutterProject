

import 'package:flutter/material.dart';

extension ContextExtenisons on BuildContext{
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get statusBarWidth => MediaQuery.of(this).padding.left;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;
  double get bottomBarWidth => MediaQuery.of(this).padding.right;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  bool get isLightMode => Theme.of(this).brightness == Brightness.light;
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortrait => MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isMobile => width < 768;
  bool get isTablet => width >= 768 && width < 992;
  bool get isDesktop => width >= 992;
  bool get isMobileOrTablet => width < 992;
  bool get isMobileOrDesktop => width < 992;
  bool get isTabletOrDesktop => width >= 768;
  bool get isMobileOrSmaller => width < 768;
  bool get isMobileOrLarger => width < 1200;
  bool get isTabletOrSmaller => width < 992;
  bool get isTabletOrLarger => width >= 768;
  bool get isDesktopOrSmaller => width < 1200;
  bool get isDesktopOrLarger => width >= 992;
}