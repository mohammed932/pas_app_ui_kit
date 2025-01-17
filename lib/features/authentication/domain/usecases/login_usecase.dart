part of 'auth_usecase.imports.dart';

@injectable
class LoginUseCase extends BaseUseCase<LoginResponseModel, LoginRequest> {
  final BaseAuthRepo repository;
  LoginUseCase({required this.repository});
  @override
  Future<Either<Failure, LoginResponseModel>> call(
      {required LoginRequest params}) async {
    return repository.login(request: params);
  }
}
