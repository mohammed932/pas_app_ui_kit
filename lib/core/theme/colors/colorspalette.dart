import 'package:flutter/material.dart';

class PasColors {
  PasColors._();
  static const PasGrayColors gray = PasGrayColors._();
  static const PasPrimaryColors primary = PasPrimaryColors._();
  static const PasSecondaryColors secondary = PasSecondaryColors._();
  static const PasTertiaryColors tertiary = PasTertiaryColors._();
  static const PasSystemColors system = PasSystemColors._();
  static const PasAddationalColors addational = PasAddationalColors._();
}

class PasGrayColors {
  const PasGrayColors._();
  Color get g100 => const Color(0xFFF3F3F3);
  Color get g200 => const Color(0xFFD9D9D9);
  Color get g300 => const Color(0xFFD1D1D6);
  Color get g400 => const Color(0xFF8E8E93);
  Color get g500 => const Color(0xFF525252);
}

class PasPrimaryColors {
  const PasPrimaryColors._();
  Color get p100 => const Color(0xFFDEF9EF);
  Color get p200 => const Color(0xFF99F3CF);
  Color get p300 => const Color(0xFF009B78);
}

class PasSecondaryColors {
  const PasSecondaryColors._();
  Color get mintCream => const Color(0xFFF0F9F5);
}

class PasTertiaryColors {
  const PasTertiaryColors._();
  Color get darkGreen => const Color(0xFF005A36);
}

class PasSystemColors {
  const PasSystemColors._();
  Color get notification => const Color(0xFFF3D599);
  Color get warning => const Color(0xFFF99C53);
  Color get error100 => const Color(0xFFFBEDED);
  Color get error200 => const Color(0xFFF8CBCB);
  Color get error300 => const Color(0xFFAA1305);
}

class PasAddationalColors {
  const PasAddationalColors._();
  Color get text => const Color(0xFF001B15);
  Color get blackGround => const Color(0xFFFCFCFC);
  Color get blue => const Color(0xFF007AFF);
  Color get white => const Color(0xFFFFFFFF);
  Color get black => const Color(0xFF000000);
}
