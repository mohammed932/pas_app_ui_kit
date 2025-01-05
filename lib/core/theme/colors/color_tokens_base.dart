import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class PasColorThemeBase extends Equatable {
  const PasColorThemeBase();
  String get id;
  PasTextThemeBase get text;
  PasSurfaceThemeBase get surface;
  PasButtonThemeBase get button;
  PasBorderThemeBase get border;
  PasIconsThemeBase get icons;
  PasFillThemeBase get fill;
  @override
  List<Object?> get props => [id];
}

abstract class PasTextThemeBase {
  Color get primary;
  Color get secondary;
  Color get invert;
  Color get buttonTertiary;
  Color get error;
  Color get disabled;
  Color get brandTeal;
  Color get brandOrange;
  Color get ctaPrimary;
  Color get ctaSecondary;
  Color get uPrimary;
  Color get uSecondary;
  Color get status;
  Color get success;
}

abstract class PasSurfaceThemeBase {
  Color get primary;
  Color get secondary;
  Color get invert;
  Color get secondaryGlass;
  Color get glass;
  Color get overlay;
}

abstract class PasButtonThemeBase {
  Color get primary;
  Color get secondary;
  Color get small;
  Color get uPrimary;
  Color get uSecondary;
  Color get disabled;
  Color get elevated;
}

abstract class PasBorderThemeBase {
  Color get primary;
  Color get secondary;
  Color get brand;
  Color get error;
}

abstract class PasIconsThemeBase {
  Color get fillSecondary;
  Color get fillWarning;
  Color get fillError;
  Color get fillPrimary;
  Color get fillSelected;
  Color get fillInvert;
  Color get disabled;
  Color get buttonPrimary;
  Color get brand;
  Color get fillSuccess;
}

abstract class PasFillThemeBase {
  Color get statusNeutral;
  Color get statusAlert;
  Color get statusError;
  Color get brandTeal;
  Color get brandU;
  Color get input;
  Color get inputBottomSheet;
  Color get statusSuccess;
  Color get background;
  Color get inputDisabled;
  Color get overlay;
  Color get bottomSheet;
  Color get card;
  Color get cardU;
}
