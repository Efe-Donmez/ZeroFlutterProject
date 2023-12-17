import 'package:clicker/core/constants/class_items.dart';
import 'package:clicker/pages/home/home_page.dart';
import 'package:clicker/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String initialRoute = "/";
  static const String home = "/home";
  static const String settings = "/settings";

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    settings: (context) => const SettingsPage(),
  };

  static final List<AppNavItem> navItems = [
    AppNavItem(
      icon: const Icon(Icons.home_outlined),
      selectedIcon: const Icon(Icons.home),
      label: "Ana Sayfa",
      route: home,
    ),
    AppNavItem(
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      label: "Ayarlar",
      route: settings,
    ),
  ];
}


