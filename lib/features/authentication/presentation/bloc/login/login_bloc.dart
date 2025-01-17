import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/enums.dart';
import '../../../data/models/request/login_request/login_request.dart';
import '../../../domain/usecases/auth_usecase.imports.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(const _LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        login: _login,
      );
    });
  }

  _login(String username, String password) async {
    emit(state.copyWith(requestState: RequestState.loading));
    final response = await loginUseCase(
      params: LoginRequest(
        username: username,
        password: password,
      ),
    );
    response.fold(
      (failure) {
        emit(state.copyWith(
          requestState: RequestState.error,
        ));
      },
      (res) {
        emit(state.copyWith(
          requestState: RequestState.loaded,
        ));
      },
    );
  }
}
