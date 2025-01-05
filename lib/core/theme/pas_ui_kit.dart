import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pas_app/core/theme/theme_bloc/theme_bloc.dart';

import 'colors/pas_color_theme.dart';
import 'typography/pas_text_theme.dart';
import 'typography/pas_theme_context.dart';

class PasUiKitInitializer extends StatelessWidget {
  final Widget child;
  final Size designSize;

  static update(BuildContext context) {
    BlocProvider.of<ThemeBloc>(context).add(ThemeBlocEvent.initValuUiKitEvent(
      langCode: Localizations.localeOf(context).languageCode,
    ));
  }

  const PasUiKitInitializer({
    super.key,
    required this.child,
    required this.designSize,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) =>
          ThemeBloc()..add(const ThemeBlocEvent.initColorTheme()),
      child: ScreenUtilInit(
        designSize: designSize,
        splitScreenMode: true,
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        builder: (ctx, _) {
          PasThemeContext(ctx);
          return MediaQuery(
            data: MediaQuery.of(ctx).copyWith(textScaleFactor: 1.0),
            child: BlocBuilder<ThemeBloc, ThemeBlocState>(
              builder: (c, state) {
                return PasColorTheme(
                  theme: state.selectedColorTheme,
                  child: PasTextTheme(
                    theme: state.selectedTheme,
                    child: child,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
