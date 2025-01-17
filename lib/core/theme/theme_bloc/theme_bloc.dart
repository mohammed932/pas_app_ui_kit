import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../cache/storage_service.dart';
import '../../injection/injection.dart';
import '../../utils/enums.dart';
import '../colors/color_tokens_base.dart';
import '../colors/pas_color_theme.dart';
import '../colors/pas_dark_theme.dart';
import '../colors/pas_light_theme.dart';
import '../typography/arabic_theme.dart';
import '../typography/english_theme.dart';
import '../typography/typography_base.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeBlocEvent, ThemeBlocState> {
  ThemeBloc() : super(const _ThemeBlocState()) {
    on<ThemeBlocEvent>((event, emit) async {
      await event.when(
        initColorTheme: _initColorTheme,
        initValuUiKitEvent: _initValuUiKitEvent,
        changeColorThemeEvent: _changeColorThemeEvent,
        changeTextThemeEvent: _changeTextThemeEvent,
      );
    });
  }

  _initColorTheme() async {
    PasColorThemeBase theme;
    String? themeId =
        await getIt<StorageService>().get(key: ThemeEnum.pasColorTheme.name);
    if (themeId == "PasDarkTheme") {
      theme = PasDarkTheme();
    } else if (themeId == "PasLightTheme") {
      theme = PasLightTheme();
    } else {
      theme = _getSystemTheme();
      getIt<StorageService>()
          .set(key: ThemeEnum.pasColorTheme.name, value: "System");
    }

    _updateSystemUI(theme);
    emit(state.copyWith(selectedColorTheme: theme));
  }

  _initValuUiKitEvent(String langCode) {
    emit(
      state.copyWith(
        selectedTheme: getThemeOfLang(langCode),
      ),
    );
  }

  _changeTextThemeEvent(PasTypographyTheme theme) {
    emit(state.copyWith(selectedTheme: theme));
  }

  Future<void> _changeColorThemeEvent(ColorThemes theme) async {
    // Determine the selected color theme
    final PasColorThemeBase selectedTheme = switch (theme) {
      ColorThemes.light => PasLightTheme(),
      ColorThemes.dark => PasDarkTheme(),
      ColorThemes.system => _getSystemTheme(),
    };

    // Persist the selected theme
    final themeId = theme == ColorThemes.system ? "System" : selectedTheme.id;
    getIt<StorageService>()
        .set(key: ThemeEnum.pasColorTheme.name, value: themeId);

    // Update system UI overlay styles
    final brightness = selectedTheme is PasDarkTheme
        ? (kIsWeb || Platform.isIOS ? Brightness.dark : Brightness.light)
        : Brightness.light;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
      ),
    );

    emit(state.copyWith(selectedColorTheme: selectedTheme));
  }

  PasColorThemeBase _getSystemTheme() {
    switch (SchedulerBinding.instance.platformDispatcher.platformBrightness) {
      case Brightness.dark:
        return PasDarkTheme();

      case Brightness.light:
        return PasLightTheme();
    }
  }

  PasTypographyTheme getThemeOfLang(String lang) {
    switch (lang) {
      case "ar":
        return const PasArabicTheme();
      default:
        return const PasEnglishTheme();
    }
  }

  void _updateSystemUI(PasColorThemeBase theme) {
    final brightness =
        theme is PasDarkTheme ? Brightness.dark : Brightness.light;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
      ),
    );
  }
}
