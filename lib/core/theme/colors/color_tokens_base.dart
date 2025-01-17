import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class PasColorThemeBase extends Equatable {
  const PasColorThemeBase();
  String get id;
  PasPrimaryThemeBase get primary;
  PasSecondaryThemeBase get secondary;
  PasTertiaryThemeBase get tertiary;
  PasSystemThemeBase get system;
  PasAddationalThemeBase get addational;
  PasGrayThemeBase get gray;
  @override
  List<Object?> get props => [id];
}

abstract class PasPrimaryThemeBase {
  Color get p100;
  Color get p200;
  Color get p300;
}

abstract class PasSecondaryThemeBase {
  Color get primary;
  Color get secondary;
  Color get invert;
  Color get secondaryGlass;
  Color get glass;
  Color get overlay;
}

abstract class PasTertiaryThemeBase {
  Color get primary;
  Color get secondary;
  Color get small;
  Color get uPrimary;
  Color get uSecondary;
  Color get disabled;
  Color get elevated;
}

abstract class PasSystemThemeBase {
  Color get primary;
  Color get secondary;
  Color get brand;
  Color get error;
}

abstract class PasAddationalThemeBase {
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

abstract class PasGrayThemeBase {
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
