import 'package:flutter/material.dart';

import 'color_tokens_base.dart';
import 'colorspalette.dart';

class PasLightTheme extends PasColorThemeBase {
  const PasLightTheme();
  @override
  String get id => "PasLightTheme";

  @override
  PasBorderThemeBase get border => _BorderTheme();

  @override
  PasButtonThemeBase get button => _ButtonTheme();

  @override
  PasFillThemeBase get fill => _FillTheme();

  @override
  PasIconsThemeBase get icons => _IconTheme();

  @override
  PasSurfaceThemeBase get surface => _SurfaceTheme();

  @override
  PasTextThemeBase get text => _TextTheme();
}

class _BorderTheme extends PasBorderThemeBase {
  @override
  Color get primary => PasColors.gray.g300;

  @override
  Color get brand => PasColors.primary.p100;

  @override
  Color get error => PasColors.secondary.mintCream;

  @override
  Color get secondary => PasColors.gray.g200;
}

class _ButtonTheme extends PasButtonThemeBase {
  @override
  Color get primary => PasColors.primary.p100;

  @override
  Color get secondary => PasColors.gray.g300;

  @override
  Color get small => PasColors.primary.p300;

  @override
  Color get uPrimary => PasColors.primary.p100;

  @override
  Color get uSecondary => PasColors.primary.p300;

  @override
  Color get disabled => PasColors.gray.g300;

  @override
  Color get elevated => PasColors.gray.g300;
}

class _FillTheme extends PasFillThemeBase {
  @override
  Color get statusNeutral => PasColors.gray.g200;

  @override
  Color get statusAlert => PasColors.secondary.mintCream;

  @override
  Color get statusError => PasColors.secondary.mintCream;

  @override
  Color get brandTeal => PasColors.primary.p100;

  @override
  Color get input => PasColors.gray.g400;

  @override
  Color get statusSuccess => PasColors.secondary.mintCream;

  @override
  Color get inputDisabled => PasColors.gray.g400;

  @override
  Color get background => PasColors.gray.g300;

  @override
  Color get overlay => PasColors.gray.g200;

  @override
  Color get brandU => PasColors.primary.p300;

  @override
  Color get bottomSheet => PasColors.gray.g400;

  @override
  Color get card => PasColors.primary.p300;

  @override
  Color get cardU => PasColors.primary.p300;

  @override
  Color get inputBottomSheet => PasColors.gray.g300;
}

class _IconTheme extends PasIconsThemeBase {
  @override
  Color get fillSecondary => PasColors.gray.g200;

  @override
  Color get fillWarning => PasColors.secondary.mintCream;

  @override
  Color get fillError => PasColors.secondary.mintCream;

  @override
  Color get fillPrimary => PasColors.gray.g300;

  @override
  Color get fillSelected => PasColors.primary.p300;

  @override
  Color get fillInvert => PasColors.gray.g500;

  @override
  Color get buttonPrimary => PasColors.primary.p200;

  @override
  Color get disabled => PasColors.gray.g300;

  @override
  Color get brand => PasColors.primary.p200;

  @override
  Color get fillSuccess => PasColors.secondary.mintCream;
}

class _SurfaceTheme extends PasSurfaceThemeBase {
  @override
  Color get primary => PasColors.gray.g300;

  @override
  Color get secondary => PasColors.gray.g400;

  @override
  Color get invert => PasColors.gray.g300;

  @override
  Color get glass => PasColors.gray.g300;

  @override
  Color get secondaryGlass => PasColors.gray.g300;

  @override
  Color get overlay => PasColors.gray.g400;
}

class _TextTheme extends PasTextThemeBase {
  @override
  Color get primary => PasColors.gray.g300;

  @override
  Color get secondary => PasColors.gray.g200;

  @override
  Color get invert => PasColors.gray.g400;

  @override
  Color get ctaPrimary => PasColors.primary.p300;

  @override
  Color get ctaSecondary => PasColors.gray.g100;

  @override
  Color get uPrimary => PasColors.gray.g400;

  @override
  Color get uSecondary => PasColors.gray.g400;

  @override
  Color get buttonTertiary => PasColors.primary.p300;

  @override
  Color get status => PasColors.gray.g400;

  @override
  Color get error => PasColors.secondary.mintCream;

  @override
  Color get disabled => PasColors.gray.g500;

  @override
  Color get brandTeal => PasColors.primary.p100;

  @override
  Color get brandOrange => PasColors.primary.p200;

  @override
  Color get success => PasColors.secondary.mintCream;
}
