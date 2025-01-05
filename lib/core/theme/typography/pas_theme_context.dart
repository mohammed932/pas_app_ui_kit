import 'package:flutter/material.dart';

class PasThemeContext {
  final BuildContext? context;
  static PasThemeContext? instance;
  PasThemeContext._(this.context);
  factory PasThemeContext(BuildContext ctx) {
    instance ??= PasThemeContext._(ctx);
    return instance!;
  }
}
