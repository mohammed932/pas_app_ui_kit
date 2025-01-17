part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(RequestState.initial) RequestState requestState,
  }) = _LoginState;
}
