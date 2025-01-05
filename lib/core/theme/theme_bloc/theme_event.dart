part of 'theme_bloc.dart';

@freezed
class ThemeBlocEvent with _$ThemeBlocEvent {
  const factory ThemeBlocEvent.changeTextThemeEvent({
    required PasTypographyTheme theme,
  }) = _ChangeTextThemeEvent;
  const factory ThemeBlocEvent.changeColorThemeEvent({
    required ColorThemes theme,
  }) = _ChangeColorThemeEvent;
  const factory ThemeBlocEvent.initValuUiKitEvent({
    required String langCode,
  }) = _InitValuUiKitEvent;
  const factory ThemeBlocEvent.initColorTheme() = _InitColorTheme;
}
