// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckInOutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIn,
    required TResult Function() checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIn,
    TResult? Function()? checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIn,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIn value) checkIn,
    required TResult Function(_CheckOut value) checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIn value)? checkIn,
    TResult? Function(_CheckOut value)? checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIn value)? checkIn,
    TResult Function(_CheckOut value)? checkOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInOutEventCopyWith<$Res> {
  factory $CheckInOutEventCopyWith(
          CheckInOutEvent value, $Res Function(CheckInOutEvent) then) =
      _$CheckInOutEventCopyWithImpl<$Res, CheckInOutEvent>;
}

/// @nodoc
class _$CheckInOutEventCopyWithImpl<$Res, $Val extends CheckInOutEvent>
    implements $CheckInOutEventCopyWith<$Res> {
  _$CheckInOutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInOutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckInImplCopyWith<$Res> {
  factory _$$CheckInImplCopyWith(
          _$CheckInImpl value, $Res Function(_$CheckInImpl) then) =
      __$$CheckInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckInImplCopyWithImpl<$Res>
    extends _$CheckInOutEventCopyWithImpl<$Res, _$CheckInImpl>
    implements _$$CheckInImplCopyWith<$Res> {
  __$$CheckInImplCopyWithImpl(
      _$CheckInImpl _value, $Res Function(_$CheckInImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInOutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckInImpl implements _CheckIn {
  const _$CheckInImpl();

  @override
  String toString() {
    return 'CheckInOutEvent.checkIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIn,
    required TResult Function() checkOut,
  }) {
    return checkIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIn,
    TResult? Function()? checkOut,
  }) {
    return checkIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIn,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) {
    if (checkIn != null) {
      return checkIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIn value) checkIn,
    required TResult Function(_CheckOut value) checkOut,
  }) {
    return checkIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIn value)? checkIn,
    TResult? Function(_CheckOut value)? checkOut,
  }) {
    return checkIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIn value)? checkIn,
    TResult Function(_CheckOut value)? checkOut,
    required TResult orElse(),
  }) {
    if (checkIn != null) {
      return checkIn(this);
    }
    return orElse();
  }
}

abstract class _CheckIn implements CheckInOutEvent {
  const factory _CheckIn() = _$CheckInImpl;
}

/// @nodoc
abstract class _$$CheckOutImplCopyWith<$Res> {
  factory _$$CheckOutImplCopyWith(
          _$CheckOutImpl value, $Res Function(_$CheckOutImpl) then) =
      __$$CheckOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOutImplCopyWithImpl<$Res>
    extends _$CheckInOutEventCopyWithImpl<$Res, _$CheckOutImpl>
    implements _$$CheckOutImplCopyWith<$Res> {
  __$$CheckOutImplCopyWithImpl(
      _$CheckOutImpl _value, $Res Function(_$CheckOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInOutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckOutImpl implements _CheckOut {
  const _$CheckOutImpl();

  @override
  String toString() {
    return 'CheckInOutEvent.checkOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIn,
    required TResult Function() checkOut,
  }) {
    return checkOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIn,
    TResult? Function()? checkOut,
  }) {
    return checkOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIn,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIn value) checkIn,
    required TResult Function(_CheckOut value) checkOut,
  }) {
    return checkOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIn value)? checkIn,
    TResult? Function(_CheckOut value)? checkOut,
  }) {
    return checkOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIn value)? checkIn,
    TResult Function(_CheckOut value)? checkOut,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(this);
    }
    return orElse();
  }
}

abstract class _CheckOut implements CheckInOutEvent {
  const factory _CheckOut() = _$CheckOutImpl;
}

/// @nodoc
mixin _$CheckInOutState {
  CheckInOut get checkInOutStatus => throw _privateConstructorUsedError;
  RequestState get attendanceState => throw _privateConstructorUsedError;
  RequestState get locationState => throw _privateConstructorUsedError;
  ErrorPayload? get errorPayload => throw _privateConstructorUsedError;

  /// Create a copy of CheckInOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckInOutStateCopyWith<CheckInOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInOutStateCopyWith<$Res> {
  factory $CheckInOutStateCopyWith(
          CheckInOutState value, $Res Function(CheckInOutState) then) =
      _$CheckInOutStateCopyWithImpl<$Res, CheckInOutState>;
  @useResult
  $Res call(
      {CheckInOut checkInOutStatus,
      RequestState attendanceState,
      RequestState locationState,
      ErrorPayload? errorPayload});

  $ErrorPayloadCopyWith<$Res>? get errorPayload;
}

/// @nodoc
class _$CheckInOutStateCopyWithImpl<$Res, $Val extends CheckInOutState>
    implements $CheckInOutStateCopyWith<$Res> {
  _$CheckInOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkInOutStatus = null,
    Object? attendanceState = null,
    Object? locationState = null,
    Object? errorPayload = freezed,
  }) {
    return _then(_value.copyWith(
      checkInOutStatus: null == checkInOutStatus
          ? _value.checkInOutStatus
          : checkInOutStatus // ignore: cast_nullable_to_non_nullable
              as CheckInOut,
      attendanceState: null == attendanceState
          ? _value.attendanceState
          : attendanceState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorPayload: freezed == errorPayload
          ? _value.errorPayload
          : errorPayload // ignore: cast_nullable_to_non_nullable
              as ErrorPayload?,
    ) as $Val);
  }

  /// Create a copy of CheckInOutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorPayloadCopyWith<$Res>? get errorPayload {
    if (_value.errorPayload == null) {
      return null;
    }

    return $ErrorPayloadCopyWith<$Res>(_value.errorPayload!, (value) {
      return _then(_value.copyWith(errorPayload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckInOutStateImplCopyWith<$Res>
    implements $CheckInOutStateCopyWith<$Res> {
  factory _$$CheckInOutStateImplCopyWith(_$CheckInOutStateImpl value,
          $Res Function(_$CheckInOutStateImpl) then) =
      __$$CheckInOutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CheckInOut checkInOutStatus,
      RequestState attendanceState,
      RequestState locationState,
      ErrorPayload? errorPayload});

  @override
  $ErrorPayloadCopyWith<$Res>? get errorPayload;
}

/// @nodoc
class __$$CheckInOutStateImplCopyWithImpl<$Res>
    extends _$CheckInOutStateCopyWithImpl<$Res, _$CheckInOutStateImpl>
    implements _$$CheckInOutStateImplCopyWith<$Res> {
  __$$CheckInOutStateImplCopyWithImpl(
      _$CheckInOutStateImpl _value, $Res Function(_$CheckInOutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkInOutStatus = null,
    Object? attendanceState = null,
    Object? locationState = null,
    Object? errorPayload = freezed,
  }) {
    return _then(_$CheckInOutStateImpl(
      checkInOutStatus: null == checkInOutStatus
          ? _value.checkInOutStatus
          : checkInOutStatus // ignore: cast_nullable_to_non_nullable
              as CheckInOut,
      attendanceState: null == attendanceState
          ? _value.attendanceState
          : attendanceState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorPayload: freezed == errorPayload
          ? _value.errorPayload
          : errorPayload // ignore: cast_nullable_to_non_nullable
              as ErrorPayload?,
    ));
  }
}

/// @nodoc

class _$CheckInOutStateImpl implements _CheckInOutState {
  const _$CheckInOutStateImpl(
      {this.checkInOutStatus = CheckInOut.checkOut,
      this.attendanceState = RequestState.initial,
      this.locationState = RequestState.initial,
      this.errorPayload});

  @override
  @JsonKey()
  final CheckInOut checkInOutStatus;
  @override
  @JsonKey()
  final RequestState attendanceState;
  @override
  @JsonKey()
  final RequestState locationState;
  @override
  final ErrorPayload? errorPayload;

  @override
  String toString() {
    return 'CheckInOutState(checkInOutStatus: $checkInOutStatus, attendanceState: $attendanceState, locationState: $locationState, errorPayload: $errorPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInOutStateImpl &&
            (identical(other.checkInOutStatus, checkInOutStatus) ||
                other.checkInOutStatus == checkInOutStatus) &&
            (identical(other.attendanceState, attendanceState) ||
                other.attendanceState == attendanceState) &&
            (identical(other.locationState, locationState) ||
                other.locationState == locationState) &&
            (identical(other.errorPayload, errorPayload) ||
                other.errorPayload == errorPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkInOutStatus,
      attendanceState, locationState, errorPayload);

  /// Create a copy of CheckInOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInOutStateImplCopyWith<_$CheckInOutStateImpl> get copyWith =>
      __$$CheckInOutStateImplCopyWithImpl<_$CheckInOutStateImpl>(
          this, _$identity);
}

abstract class _CheckInOutState implements CheckInOutState {
  const factory _CheckInOutState(
      {final CheckInOut checkInOutStatus,
      final RequestState attendanceState,
      final RequestState locationState,
      final ErrorPayload? errorPayload}) = _$CheckInOutStateImpl;

  @override
  CheckInOut get checkInOutStatus;
  @override
  RequestState get attendanceState;
  @override
  RequestState get locationState;
  @override
  ErrorPayload? get errorPayload;

  /// Create a copy of CheckInOutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInOutStateImplCopyWith<_$CheckInOutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
