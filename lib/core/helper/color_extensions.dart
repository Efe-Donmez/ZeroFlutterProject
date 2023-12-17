import 'package:flutter/material.dart';

extension ColorExtension on Color {
  toMaterial() {
    return MaterialStateProperty.all(this);
  }

  Color lighten( int amount) {
    final double factor = 1.0 - (amount / 100);
    final int red = ((this.red * factor) + 0.5).toInt();
    final int green = ((this.green * factor) + 0.5).toInt();
    final int blue = ((this.blue * factor) + 0.5).toInt();
    return Color.fromARGB(alpha, red, green, blue);
  }
  Color darken(int amount) {
  final double factor = (amount / 100).clamp(0.0, 1.0);
  final int red = (this.red * factor).toInt();
  final int green = (this.green * factor).toInt();
  final int blue = (this.blue * factor).toInt();
  return Color.fromARGB(alpha, red, green, blue);
}
}
