import 'package:flutter/material.dart';

class AppNavItem{
  final Widget icon;
  final Widget selectedIcon;
  final String label;
  final String route;
  AppNavItem({required this.icon,required this.selectedIcon, required this.label, required this.route});
}