import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pas_app/core/theme/theme_bloc/theme_bloc.dart';

import 'color_tokens_base.dart';

enum ColorThemes { light, dark, system }

class PasColorTheme extends InheritedWidget {
  @override
  // ignore: overridden_fields
  final Widget child;
  final PasColorThemeBase theme;
  const PasColorTheme({
    super.key,
    required this.child,
    required this.theme,
  }) : super(child: child);
  static void changeColorTheme(BuildContext context, ColorThemes theme) {
    BlocProvider.of<ThemeBloc>(context)
        .add(ThemeBlocEvent.changeColorThemeEvent(theme: theme));
  }

  static PasColorThemeBase of(BuildContext context) {
    return PasColorTheme._currentWiget(context).theme;
  }

  static PasColorTheme _currentWiget(BuildContext context) {
    try {
      return (context.dependOnInheritedWidgetOfExactType<PasColorTheme>())!;
    } catch (e) {
      throw Exception("Can't find PasColorTheme in context tree");
    }
  }

  @override
  bool updateShouldNotify(PasColorTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
