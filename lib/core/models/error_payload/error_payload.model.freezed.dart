// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_payload.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorPayload _$ErrorPayloadFromJson(Map<String, dynamic> json) {
  return _ErrorPayload.fromJson(json);
}

/// @nodoc
mixin _$ErrorPayload {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ErrorPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorPayloadCopyWith<ErrorPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorPayloadCopyWith<$Res> {
  factory $ErrorPayloadCopyWith(
          ErrorPayload value, $Res Function(ErrorPayload) then) =
      _$ErrorPayloadCopyWithImpl<$Res, ErrorPayload>;
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class _$ErrorPayloadCopyWithImpl<$Res, $Val extends ErrorPayload>
    implements $ErrorPayloadCopyWith<$Res> {
  _$ErrorPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorPayloadImplCopyWith<$Res>
    implements $ErrorPayloadCopyWith<$Res> {
  factory _$$ErrorPayloadImplCopyWith(
          _$ErrorPayloadImpl value, $Res Function(_$ErrorPayloadImpl) then) =
      __$$ErrorPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class __$$ErrorPayloadImplCopyWithImpl<$Res>
    extends _$ErrorPayloadCopyWithImpl<$Res, _$ErrorPayloadImpl>
    implements _$$ErrorPayloadImplCopyWith<$Res> {
  __$$ErrorPayloadImplCopyWithImpl(
      _$ErrorPayloadImpl _value, $Res Function(_$ErrorPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ErrorPayloadImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorPayloadImpl implements _ErrorPayload {
  _$ErrorPayloadImpl({this.title, this.description});

  factory _$ErrorPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorPayloadImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'ErrorPayload(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorPayloadImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of ErrorPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorPayloadImplCopyWith<_$ErrorPayloadImpl> get copyWith =>
      __$$ErrorPayloadImplCopyWithImpl<_$ErrorPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorPayloadImplToJson(
      this,
    );
  }
}

abstract class _ErrorPayload implements ErrorPayload {
  factory _ErrorPayload({final String? title, final String? description}) =
      _$ErrorPayloadImpl;

  factory _ErrorPayload.fromJson(Map<String, dynamic> json) =
      _$ErrorPayloadImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;

  /// Create a copy of ErrorPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorPayloadImplCopyWith<_$ErrorPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
