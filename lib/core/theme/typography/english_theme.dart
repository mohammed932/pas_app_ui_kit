import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'typography_base.dart';

class PasEnglishTheme extends PasTypographyTheme {
  const PasEnglishTheme();

  @override
  PasBaseTextStyle get small => _PasTextStyle(fontSize: 12);
  @override
  PasBaseTextStyle get medium => _PasTextStyle(fontSize: 13);
  @override
  PasBaseTextStyle get large => _PasTextStyle(fontSize: 14);
  @override
  PasBaseTextStyle get xLarge => _PasTextStyle(fontSize: 16);
  @override
  PasBaseTextStyle get buttonText => _PasTextStyle(fontSize: 16);

  @override
  PasBaseTextStyle get heading1 => _PasTextStyle(fontSize: 27);
  @override
  PasBaseTextStyle get heading2 => _PasTextStyle(fontSize: 20);
  @override
  PasBaseTextStyle get heading3 => _PasTextStyle(fontSize: 16);

  @override
  String get id => "EnglishTheme";
}

class _PasTextStyle extends PasBaseTextStyle {
  final double fontSize;

  _PasTextStyle({required this.fontSize});

  TextStyle _textStyle(FontWeight fontWeight,
      {Color? color, bool underline = false}) {
    return TextStyle(
      color: color ?? defaultColor,
      fontSize: fontSize.sp,
      fontFamily: PasFontFamilies.sfPro,
      package: "Pas_ui_kit",
      fontWeight: fontWeight,
      height: 1.4,
      decoration: underline ? TextDecoration.underline : null,
    );
  }

  @override
  TextStyle light({Color? color}) =>
      _textStyle(PasFontWeights.light, color: color);
  @override
  TextStyle regular({Color? color}) =>
      _textStyle(PasFontWeights.regular, color: color);
  @override
  TextStyle semiBold({Color? color, bool underline = false}) =>
      _textStyle(PasFontWeights.semiBold, color: color, underline: underline);
  @override
  TextStyle bold({Color? color}) =>
      _textStyle(PasFontWeights.bold, color: color);
}
