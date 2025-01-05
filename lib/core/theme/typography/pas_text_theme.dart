import 'package:flutter/material.dart';

import 'typography_base.dart';

class PasTextTheme extends InheritedWidget {
  @override
  // ignore: overridden_fields
  final Widget child;
  final PasTypographyTheme theme;
  const PasTextTheme({
    super.key,
    required this.child,
    required this.theme,
  }) : super(child: child);

  static PasTypographyTheme of(BuildContext context) {
    return PasTextTheme._currentWiget(context).theme;
  }

  static PasTextTheme _currentWiget(BuildContext context) {
    try {
      return (context.dependOnInheritedWidgetOfExactType<PasTextTheme>())!;
    } catch (e) {
      throw Exception("Can't find PasTextTheme in context tree");
    }
  }

  @override
  bool updateShouldNotify(PasTextTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
