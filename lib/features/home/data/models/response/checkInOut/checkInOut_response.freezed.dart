// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkInOut_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckInOutResponseModel _$CheckInOutResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CheckInOutResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CheckInOutResponseModel {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CheckInOutResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckInOutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckInOutResponseModelCopyWith<CheckInOutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInOutResponseModelCopyWith<$Res> {
  factory $CheckInOutResponseModelCopyWith(CheckInOutResponseModel value,
          $Res Function(CheckInOutResponseModel) then) =
      _$CheckInOutResponseModelCopyWithImpl<$Res, CheckInOutResponseModel>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$CheckInOutResponseModelCopyWithImpl<$Res,
        $Val extends CheckInOutResponseModel>
    implements $CheckInOutResponseModelCopyWith<$Res> {
  _$CheckInOutResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInOutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInOutResponseModelImplCopyWith<$Res>
    implements $CheckInOutResponseModelCopyWith<$Res> {
  factory _$$CheckInOutResponseModelImplCopyWith(
          _$CheckInOutResponseModelImpl value,
          $Res Function(_$CheckInOutResponseModelImpl) then) =
      __$$CheckInOutResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CheckInOutResponseModelImplCopyWithImpl<$Res>
    extends _$CheckInOutResponseModelCopyWithImpl<$Res,
        _$CheckInOutResponseModelImpl>
    implements _$$CheckInOutResponseModelImplCopyWith<$Res> {
  __$$CheckInOutResponseModelImplCopyWithImpl(
      _$CheckInOutResponseModelImpl _value,
      $Res Function(_$CheckInOutResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInOutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CheckInOutResponseModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInOutResponseModelImpl extends _CheckInOutResponseModel {
  _$CheckInOutResponseModelImpl({this.message}) : super._();

  factory _$CheckInOutResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInOutResponseModelImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'CheckInOutResponseModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInOutResponseModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CheckInOutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInOutResponseModelImplCopyWith<_$CheckInOutResponseModelImpl>
      get copyWith => __$$CheckInOutResponseModelImplCopyWithImpl<
          _$CheckInOutResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInOutResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CheckInOutResponseModel extends CheckInOutResponseModel {
  factory _CheckInOutResponseModel({final String? message}) =
      _$CheckInOutResponseModelImpl;
  _CheckInOutResponseModel._() : super._();

  factory _CheckInOutResponseModel.fromJson(Map<String, dynamic> json) =
      _$CheckInOutResponseModelImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of CheckInOutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInOutResponseModelImplCopyWith<_$CheckInOutResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
