import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
