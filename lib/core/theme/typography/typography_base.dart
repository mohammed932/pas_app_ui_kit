import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pas_app/core/theme/theme_bloc/theme_bloc.dart';

import 'pas_theme_context.dart';

abstract class PasTypographyTheme extends Equatable {
  const PasTypographyTheme();
  String get id;
  static PasTypographyTheme of(BuildContext context) {
    return BlocProvider.of<ThemeBloc>(context).state.selectedTheme;
  }

  PasBaseTextStyle get small;
  PasBaseTextStyle get medium;
  PasBaseTextStyle get large;
  PasBaseTextStyle get xLarge;
  PasBaseTextStyle get buttonText;
  PasBaseTextStyle get heading3;
  PasBaseTextStyle get heading2;
  PasBaseTextStyle get heading1;
  @override
  List<Object?> get props => [id];
}

abstract class PasTextStyleConfigs {
  double get fontSize;
}

abstract class PasBaseTextStyle {
  Color get defaultColor {
    return BlocProvider.of<ThemeBloc>(PasThemeContext.instance!.context!)
        .state
        .selectedColorTheme
        .text
        .primary;
  }

  TextStyle light({Color? color});
  TextStyle regular({Color? color});
  TextStyle semiBold({Color? color, bool underline = false});
  TextStyle bold({Color? color});
}

abstract class PasHeadingTextStyle {
  Color get defaultColor {
    return BlocProvider.of<ThemeBloc>(PasThemeContext.instance!.context!)
        .state
        .selectedColorTheme
        .text
        .primary;
  }

  TextStyle regular({Color? color});
  TextStyle semiBold({Color? color});
  TextStyle bold({Color? color});
}

class PasFontWeights {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w900;
}

class PasFontFamilies {
  static const String sfPro = "sf_pro";
  static const String sfArabic = "sf_arabic";
  static const String sfArabicRounded = "sf_arabic_rounded";
}
