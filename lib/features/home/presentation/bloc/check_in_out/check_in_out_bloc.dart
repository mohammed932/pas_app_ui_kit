import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:pas_app/core/utils/utils.dart';
import 'package:pas_app/features/home/domain/usecases/checkInOut.usecase.imports.dart';

import '../../../../../core/models/error_payload/error_payload.model.dart';
import '../../../../../core/utils/enums.dart';
import '../../../data/models/request/checkInOut/checkInOut_request.dart';
part 'check_in_out_event.dart';
part 'check_in_out_state.dart';
part 'check_in_out_bloc.freezed.dart';

@injectable
class CheckInOutBloc extends Bloc<CheckInOutEvent, CheckInOutState> {
  double? latitude;
  double? longitude;
  StreamSubscription<ServiceStatus>? _locationServiceStream;
  final CheckInOutUseCase checkInOutUseCase;
  CheckInOutBloc({
    required this.checkInOutUseCase,
  }) : super(const _CheckInOutState()) {
    on<CheckInOutEvent>((event, emit) async {
      await event.when(
        checkIn: _checkIn,
        checkOut: _checkOut,
      );
    });
    // Start monitoring location services state
    _startMonitoringLocationServices();
  }

  _checkIn() async {
    await _getLocation();
    if (state.locationState == RequestState.loaded) {
      await _checkInOut(
        isCheckIn: true,
        onSuccess: () {
          emit(state.copyWith(
            attendanceState: RequestState.loaded,
            checkInOutStatus: CheckInOut.checkIn,
          ));
        },
        onFailure: (error) {
          emit(state.copyWith(
            attendanceState: RequestState.error,
            errorPayload: ErrorPayload(
              description: error,
            ),
          ));
        },
      );
    }
  }

  _checkOut() async {
    await _getLocation();
    await _checkInOut(
      isCheckIn: false,
      onSuccess: () {
        emit(state.copyWith(
          attendanceState: RequestState.loaded,
          checkInOutStatus: CheckInOut.checkOut,
        ));
      },
      onFailure: (error) {
        emit(state.copyWith(
          attendanceState: RequestState.error,
          errorPayload: ErrorPayload(
            description: error,
          ),
        ));
      },
    );
  }

  _checkInOut({
    required Function onSuccess,
    required Function(String) onFailure,
    required bool isCheckIn,
  }) async {
    emit(state.copyWith(attendanceState: RequestState.loading));
    final response = await checkInOutUseCase(
      params: CheckInOutRequest(
        latitude: latitude.toString(),
        longitude: longitude.toString(),
      ),
    );
    response.fold(
      (failure) {
        onFailure(failure.message);
      },
      (res) {
        onSuccess();
      },
    );
  }

  Future<void> _getLocation() async {
    try {
      emit(state.copyWith(locationState: RequestState.loading));
      await Utils.getLocation(
        onSuccess: (lat, long) {
          latitude = lat;
          longitude = long;
          emit(state.copyWith(locationState: RequestState.loaded));
        },
        onError: (error) async {
          emit(
            state.copyWith(
              locationState: RequestState.error,
              errorPayload: ErrorPayload(
                description: error,
              ),
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(locationState: RequestState.error),
      );
    }
  }

  void _startMonitoringLocationServices() {
    _locationServiceStream = Geolocator.getServiceStatusStream().listen(
      (serviceStatus) async {
        if (serviceStatus == ServiceStatus.disabled) {
          // Automatically check out if location services are disabled
          add(const CheckInOutEvent.checkOut());
        }
      },
    );
  }

  @override
  Future<void> close() {
    _locationServiceStream?.cancel();
    return super.close();
  }
}
