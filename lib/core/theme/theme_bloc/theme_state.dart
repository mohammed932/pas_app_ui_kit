part of 'theme_bloc.dart';

@freezed
class ThemeBlocState with _$ThemeBlocState {
  const factory ThemeBlocState({
    @Default(PasEnglishTheme()) PasTypographyTheme selectedTheme,
    @Default(PasLightTheme()) PasColorThemeBase selectedColorTheme,
  }) = _ThemeBlocState;
}
