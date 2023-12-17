import 'package:flutter/material.dart';

extension AppStringExtension on String{
  Color toColor() => Color(int.parse("0xFF${replaceAll("#", "")}"));
}