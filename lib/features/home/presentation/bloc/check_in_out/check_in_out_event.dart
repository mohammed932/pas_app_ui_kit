part of 'check_in_out_bloc.dart';

@freezed
class CheckInOutEvent with _$CheckInOutEvent {
  const factory CheckInOutEvent.checkIn() = _CheckIn;
  const factory CheckInOutEvent.checkOut() = _CheckOut;
}
