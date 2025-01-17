import 'dart:ui';

import 'color_tokens_base.dart';
import 'colorspalette.dart';

class PasDarkTheme extends PasColorThemeBase {
  @override
  String get id => "PasDarkTheme";

  @override
  PasSystemThemeBase get system => _BorderTheme();

  @override
  PasTertiaryThemeBase get tertiary => _ButtonTheme();

  @override
  PasGrayThemeBase get gray => _FillTheme();

  @override
  PasAddationalThemeBase get addational => _IconTheme();

  @override
  PasSecondaryThemeBase get secondary => _SurfaceTheme();

  @override
  PasPrimaryThemeBase get primary => _PrimaryTheme();
}

class _BorderTheme extends PasSystemThemeBase {
  @override
  Color get primary => PasColors.gray.g300;

  @override
  Color get brand => PasColors.primary.p100;

  @override
  Color get error => PasColors.secondary.mintCream;

  @override
  Color get secondary => PasColors.gray.g200;
}

class _ButtonTheme extends PasTertiaryThemeBase {
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

class _FillTheme extends PasGrayThemeBase {
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

class _IconTheme extends PasAddationalThemeBase {
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

class _SurfaceTheme extends PasSecondaryThemeBase {
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

class _PrimaryTheme extends PasPrimaryThemeBase {
  @override
  Color get p100 => throw UnimplementedError();

  @override
  Color get p200 => throw UnimplementedError();

  @override
  Color get p300 => throw UnimplementedError();
}
