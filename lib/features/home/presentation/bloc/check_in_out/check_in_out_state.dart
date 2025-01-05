part of 'check_in_out_bloc.dart';

enum CheckInOut { checkIn, checkOut }

@freezed
class CheckInOutState with _$CheckInOutState {
  const factory CheckInOutState({
    @Default(CheckInOut.checkOut) CheckInOut checkInOutStatus,
    @Default(RequestState.initial) RequestState attendanceState,
    @Default(RequestState.initial) RequestState locationState,
    ErrorPayload? errorPayload,
  }) = _CheckInOutState;
}
