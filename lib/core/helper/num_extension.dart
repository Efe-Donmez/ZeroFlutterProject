import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension AppNumExtension on num {
  Color toColor() => Color(toInt());

  String toStringComma() {
    NumberFormat formatter = NumberFormat('#,###.##');
    String formattedValue = formatter.format(this);
    return formattedValue;
  }

  DateTime? toDateTime() {
    return DateTime.parse(this as String);
  }
}
