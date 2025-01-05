// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasTypographyTheme theme) changeTextThemeEvent,
    required TResult Function(ColorThemes theme) changeColorThemeEvent,
    required TResult Function(String langCode) initValuUiKitEvent,
    required TResult Function() initColorTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult? Function(ColorThemes theme)? changeColorThemeEvent,
    TResult? Function(String langCode)? initValuUiKitEvent,
    TResult? Function()? initColorTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult Function(ColorThemes theme)? changeColorThemeEvent,
    TResult Function(String langCode)? initValuUiKitEvent,
    TResult Function()? initColorTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTextThemeEvent value) changeTextThemeEvent,
    required TResult Function(_ChangeColorThemeEvent value)
        changeColorThemeEvent,
    required TResult Function(_InitValuUiKitEvent value) initValuUiKitEvent,
    required TResult Function(_InitColorTheme value) initColorTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult? Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult? Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult? Function(_InitColorTheme value)? initColorTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult Function(_InitColorTheme value)? initColorTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocEventCopyWith<$Res> {
  factory $ThemeBlocEventCopyWith(
          ThemeBlocEvent value, $Res Function(ThemeBlocEvent) then) =
      _$ThemeBlocEventCopyWithImpl<$Res, ThemeBlocEvent>;
}

/// @nodoc
class _$ThemeBlocEventCopyWithImpl<$Res, $Val extends ThemeBlocEvent>
    implements $ThemeBlocEventCopyWith<$Res> {
  _$ThemeBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeTextThemeEventImplCopyWith<$Res> {
  factory _$$ChangeTextThemeEventImplCopyWith(_$ChangeTextThemeEventImpl value,
          $Res Function(_$ChangeTextThemeEventImpl) then) =
      __$$ChangeTextThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasTypographyTheme theme});
}

/// @nodoc
class __$$ChangeTextThemeEventImplCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$ChangeTextThemeEventImpl>
    implements _$$ChangeTextThemeEventImplCopyWith<$Res> {
  __$$ChangeTextThemeEventImplCopyWithImpl(_$ChangeTextThemeEventImpl _value,
      $Res Function(_$ChangeTextThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$ChangeTextThemeEventImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as PasTypographyTheme,
    ));
  }
}

/// @nodoc

class _$ChangeTextThemeEventImpl
    with DiagnosticableTreeMixin
    implements _ChangeTextThemeEvent {
  const _$ChangeTextThemeEventImpl({required this.theme});

  @override
  final PasTypographyTheme theme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeBlocEvent.changeTextThemeEvent(theme: $theme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeBlocEvent.changeTextThemeEvent'))
      ..add(DiagnosticsProperty('theme', theme));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTextThemeEventImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTextThemeEventImplCopyWith<_$ChangeTextThemeEventImpl>
      get copyWith =>
          __$$ChangeTextThemeEventImplCopyWithImpl<_$ChangeTextThemeEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasTypographyTheme theme) changeTextThemeEvent,
    required TResult Function(ColorThemes theme) changeColorThemeEvent,
    required TResult Function(String langCode) initValuUiKitEvent,
    required TResult Function() initColorTheme,
  }) {
    return changeTextThemeEvent(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult? Function(ColorThemes theme)? changeColorThemeEvent,
    TResult? Function(String langCode)? initValuUiKitEvent,
    TResult? Function()? initColorTheme,
  }) {
    return changeTextThemeEvent?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult Function(ColorThemes theme)? changeColorThemeEvent,
    TResult Function(String langCode)? initValuUiKitEvent,
    TResult Function()? initColorTheme,
    required TResult orElse(),
  }) {
    if (changeTextThemeEvent != null) {
      return changeTextThemeEvent(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTextThemeEvent value) changeTextThemeEvent,
    required TResult Function(_ChangeColorThemeEvent value)
        changeColorThemeEvent,
    required TResult Function(_InitValuUiKitEvent value) initValuUiKitEvent,
    required TResult Function(_InitColorTheme value) initColorTheme,
  }) {
    return changeTextThemeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult? Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult? Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult? Function(_InitColorTheme value)? initColorTheme,
  }) {
    return changeTextThemeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult Function(_InitColorTheme value)? initColorTheme,
    required TResult orElse(),
  }) {
    if (changeTextThemeEvent != null) {
      return changeTextThemeEvent(this);
    }
    return orElse();
  }
}

abstract class _ChangeTextThemeEvent implements ThemeBlocEvent {
  const factory _ChangeTextThemeEvent(
      {required final PasTypographyTheme theme}) = _$ChangeTextThemeEventImpl;

  PasTypographyTheme get theme;

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTextThemeEventImplCopyWith<_$ChangeTextThemeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeColorThemeEventImplCopyWith<$Res> {
  factory _$$ChangeColorThemeEventImplCopyWith(
          _$ChangeColorThemeEventImpl value,
          $Res Function(_$ChangeColorThemeEventImpl) then) =
      __$$ChangeColorThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ColorThemes theme});
}

/// @nodoc
class __$$ChangeColorThemeEventImplCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$ChangeColorThemeEventImpl>
    implements _$$ChangeColorThemeEventImplCopyWith<$Res> {
  __$$ChangeColorThemeEventImplCopyWithImpl(_$ChangeColorThemeEventImpl _value,
      $Res Function(_$ChangeColorThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$ChangeColorThemeEventImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ColorThemes,
    ));
  }
}

/// @nodoc

class _$ChangeColorThemeEventImpl
    with DiagnosticableTreeMixin
    implements _ChangeColorThemeEvent {
  const _$ChangeColorThemeEventImpl({required this.theme});

  @override
  final ColorThemes theme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeBlocEvent.changeColorThemeEvent(theme: $theme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeBlocEvent.changeColorThemeEvent'))
      ..add(DiagnosticsProperty('theme', theme));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorThemeEventImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorThemeEventImplCopyWith<_$ChangeColorThemeEventImpl>
      get copyWith => __$$ChangeColorThemeEventImplCopyWithImpl<
          _$ChangeColorThemeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasTypographyTheme theme) changeTextThemeEvent,
    required TResult Function(ColorThemes theme) changeColorThemeEvent,
    required TResult Function(String langCode) initValuUiKitEvent,
    required TResult Function() initColorTheme,
  }) {
    return changeColorThemeEvent(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult? Function(ColorThemes theme)? changeColorThemeEvent,
    TResult? Function(String langCode)? initValuUiKitEvent,
    TResult? Function()? initColorTheme,
  }) {
    return changeColorThemeEvent?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult Function(ColorThemes theme)? changeColorThemeEvent,
    TResult Function(String langCode)? initValuUiKitEvent,
    TResult Function()? initColorTheme,
    required TResult orElse(),
  }) {
    if (changeColorThemeEvent != null) {
      return changeColorThemeEvent(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTextThemeEvent value) changeTextThemeEvent,
    required TResult Function(_ChangeColorThemeEvent value)
        changeColorThemeEvent,
    required TResult Function(_InitValuUiKitEvent value) initValuUiKitEvent,
    required TResult Function(_InitColorTheme value) initColorTheme,
  }) {
    return changeColorThemeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult? Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult? Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult? Function(_InitColorTheme value)? initColorTheme,
  }) {
    return changeColorThemeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult Function(_InitColorTheme value)? initColorTheme,
    required TResult orElse(),
  }) {
    if (changeColorThemeEvent != null) {
      return changeColorThemeEvent(this);
    }
    return orElse();
  }
}

abstract class _ChangeColorThemeEvent implements ThemeBlocEvent {
  const factory _ChangeColorThemeEvent({required final ColorThemes theme}) =
      _$ChangeColorThemeEventImpl;

  ColorThemes get theme;

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeColorThemeEventImplCopyWith<_$ChangeColorThemeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitValuUiKitEventImplCopyWith<$Res> {
  factory _$$InitValuUiKitEventImplCopyWith(_$InitValuUiKitEventImpl value,
          $Res Function(_$InitValuUiKitEventImpl) then) =
      __$$InitValuUiKitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$InitValuUiKitEventImplCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$InitValuUiKitEventImpl>
    implements _$$InitValuUiKitEventImplCopyWith<$Res> {
  __$$InitValuUiKitEventImplCopyWithImpl(_$InitValuUiKitEventImpl _value,
      $Res Function(_$InitValuUiKitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$InitValuUiKitEventImpl(
      langCode: null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitValuUiKitEventImpl
    with DiagnosticableTreeMixin
    implements _InitValuUiKitEvent {
  const _$InitValuUiKitEventImpl({required this.langCode});

  @override
  final String langCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeBlocEvent.initValuUiKitEvent(langCode: $langCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeBlocEvent.initValuUiKitEvent'))
      ..add(DiagnosticsProperty('langCode', langCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitValuUiKitEventImpl &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitValuUiKitEventImplCopyWith<_$InitValuUiKitEventImpl> get copyWith =>
      __$$InitValuUiKitEventImplCopyWithImpl<_$InitValuUiKitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasTypographyTheme theme) changeTextThemeEvent,
    required TResult Function(ColorThemes theme) changeColorThemeEvent,
    required TResult Function(String langCode) initValuUiKitEvent,
    required TResult Function() initColorTheme,
  }) {
    return initValuUiKitEvent(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult? Function(ColorThemes theme)? changeColorThemeEvent,
    TResult? Function(String langCode)? initValuUiKitEvent,
    TResult? Function()? initColorTheme,
  }) {
    return initValuUiKitEvent?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult Function(ColorThemes theme)? changeColorThemeEvent,
    TResult Function(String langCode)? initValuUiKitEvent,
    TResult Function()? initColorTheme,
    required TResult orElse(),
  }) {
    if (initValuUiKitEvent != null) {
      return initValuUiKitEvent(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTextThemeEvent value) changeTextThemeEvent,
    required TResult Function(_ChangeColorThemeEvent value)
        changeColorThemeEvent,
    required TResult Function(_InitValuUiKitEvent value) initValuUiKitEvent,
    required TResult Function(_InitColorTheme value) initColorTheme,
  }) {
    return initValuUiKitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult? Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult? Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult? Function(_InitColorTheme value)? initColorTheme,
  }) {
    return initValuUiKitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult Function(_InitColorTheme value)? initColorTheme,
    required TResult orElse(),
  }) {
    if (initValuUiKitEvent != null) {
      return initValuUiKitEvent(this);
    }
    return orElse();
  }
}

abstract class _InitValuUiKitEvent implements ThemeBlocEvent {
  const factory _InitValuUiKitEvent({required final String langCode}) =
      _$InitValuUiKitEventImpl;

  String get langCode;

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitValuUiKitEventImplCopyWith<_$InitValuUiKitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitColorThemeImplCopyWith<$Res> {
  factory _$$InitColorThemeImplCopyWith(_$InitColorThemeImpl value,
          $Res Function(_$InitColorThemeImpl) then) =
      __$$InitColorThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitColorThemeImplCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$InitColorThemeImpl>
    implements _$$InitColorThemeImplCopyWith<$Res> {
  __$$InitColorThemeImplCopyWithImpl(
      _$InitColorThemeImpl _value, $Res Function(_$InitColorThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitColorThemeImpl
    with DiagnosticableTreeMixin
    implements _InitColorTheme {
  const _$InitColorThemeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeBlocEvent.initColorTheme()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ThemeBlocEvent.initColorTheme'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitColorThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasTypographyTheme theme) changeTextThemeEvent,
    required TResult Function(ColorThemes theme) changeColorThemeEvent,
    required TResult Function(String langCode) initValuUiKitEvent,
    required TResult Function() initColorTheme,
  }) {
    return initColorTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult? Function(ColorThemes theme)? changeColorThemeEvent,
    TResult? Function(String langCode)? initValuUiKitEvent,
    TResult? Function()? initColorTheme,
  }) {
    return initColorTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasTypographyTheme theme)? changeTextThemeEvent,
    TResult Function(ColorThemes theme)? changeColorThemeEvent,
    TResult Function(String langCode)? initValuUiKitEvent,
    TResult Function()? initColorTheme,
    required TResult orElse(),
  }) {
    if (initColorTheme != null) {
      return initColorTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTextThemeEvent value) changeTextThemeEvent,
    required TResult Function(_ChangeColorThemeEvent value)
        changeColorThemeEvent,
    required TResult Function(_InitValuUiKitEvent value) initValuUiKitEvent,
    required TResult Function(_InitColorTheme value) initColorTheme,
  }) {
    return initColorTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult? Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult? Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult? Function(_InitColorTheme value)? initColorTheme,
  }) {
    return initColorTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTextThemeEvent value)? changeTextThemeEvent,
    TResult Function(_ChangeColorThemeEvent value)? changeColorThemeEvent,
    TResult Function(_InitValuUiKitEvent value)? initValuUiKitEvent,
    TResult Function(_InitColorTheme value)? initColorTheme,
    required TResult orElse(),
  }) {
    if (initColorTheme != null) {
      return initColorTheme(this);
    }
    return orElse();
  }
}

abstract class _InitColorTheme implements ThemeBlocEvent {
  const factory _InitColorTheme() = _$InitColorThemeImpl;
}

/// @nodoc
mixin _$ThemeBlocState {
  PasTypographyTheme get selectedTheme => throw _privateConstructorUsedError;
  PasColorThemeBase get selectedColorTheme =>
      throw _privateConstructorUsedError;

  /// Create a copy of ThemeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeBlocStateCopyWith<ThemeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocStateCopyWith<$Res> {
  factory $ThemeBlocStateCopyWith(
          ThemeBlocState value, $Res Function(ThemeBlocState) then) =
      _$ThemeBlocStateCopyWithImpl<$Res, ThemeBlocState>;
  @useResult
  $Res call(
      {PasTypographyTheme selectedTheme, PasColorThemeBase selectedColorTheme});
}

/// @nodoc
class _$ThemeBlocStateCopyWithImpl<$Res, $Val extends ThemeBlocState>
    implements $ThemeBlocStateCopyWith<$Res> {
  _$ThemeBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTheme = null,
    Object? selectedColorTheme = null,
  }) {
    return _then(_value.copyWith(
      selectedTheme: null == selectedTheme
          ? _value.selectedTheme
          : selectedTheme // ignore: cast_nullable_to_non_nullable
              as PasTypographyTheme,
      selectedColorTheme: null == selectedColorTheme
          ? _value.selectedColorTheme
          : selectedColorTheme // ignore: cast_nullable_to_non_nullable
              as PasColorThemeBase,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeBlocStateImplCopyWith<$Res>
    implements $ThemeBlocStateCopyWith<$Res> {
  factory _$$ThemeBlocStateImplCopyWith(_$ThemeBlocStateImpl value,
          $Res Function(_$ThemeBlocStateImpl) then) =
      __$$ThemeBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PasTypographyTheme selectedTheme, PasColorThemeBase selectedColorTheme});
}

/// @nodoc
class __$$ThemeBlocStateImplCopyWithImpl<$Res>
    extends _$ThemeBlocStateCopyWithImpl<$Res, _$ThemeBlocStateImpl>
    implements _$$ThemeBlocStateImplCopyWith<$Res> {
  __$$ThemeBlocStateImplCopyWithImpl(
      _$ThemeBlocStateImpl _value, $Res Function(_$ThemeBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTheme = null,
    Object? selectedColorTheme = null,
  }) {
    return _then(_$ThemeBlocStateImpl(
      selectedTheme: null == selectedTheme
          ? _value.selectedTheme
          : selectedTheme // ignore: cast_nullable_to_non_nullable
              as PasTypographyTheme,
      selectedColorTheme: null == selectedColorTheme
          ? _value.selectedColorTheme
          : selectedColorTheme // ignore: cast_nullable_to_non_nullable
              as PasColorThemeBase,
    ));
  }
}

/// @nodoc

class _$ThemeBlocStateImpl
    with DiagnosticableTreeMixin
    implements _ThemeBlocState {
  const _$ThemeBlocStateImpl(
      {this.selectedTheme = const PasEnglishTheme(),
      this.selectedColorTheme = const PasLightTheme()});

  @override
  @JsonKey()
  final PasTypographyTheme selectedTheme;
  @override
  @JsonKey()
  final PasColorThemeBase selectedColorTheme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeBlocState(selectedTheme: $selectedTheme, selectedColorTheme: $selectedColorTheme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeBlocState'))
      ..add(DiagnosticsProperty('selectedTheme', selectedTheme))
      ..add(DiagnosticsProperty('selectedColorTheme', selectedColorTheme));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeBlocStateImpl &&
            (identical(other.selectedTheme, selectedTheme) ||
                other.selectedTheme == selectedTheme) &&
            (identical(other.selectedColorTheme, selectedColorTheme) ||
                other.selectedColorTheme == selectedColorTheme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedTheme, selectedColorTheme);

  /// Create a copy of ThemeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeBlocStateImplCopyWith<_$ThemeBlocStateImpl> get copyWith =>
      __$$ThemeBlocStateImplCopyWithImpl<_$ThemeBlocStateImpl>(
          this, _$identity);
}

abstract class _ThemeBlocState implements ThemeBlocState {
  const factory _ThemeBlocState(
      {final PasTypographyTheme selectedTheme,
      final PasColorThemeBase selectedColorTheme}) = _$ThemeBlocStateImpl;

  @override
  PasTypographyTheme get selectedTheme;
  @override
  PasColorThemeBase get selectedColorTheme;

  /// Create a copy of ThemeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeBlocStateImplCopyWith<_$ThemeBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
